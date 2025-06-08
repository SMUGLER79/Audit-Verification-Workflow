//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract certificateRegistry{
    address public certifier;
    
    struct certificate{
        string course;
        address issuer;
    }

    mapping(address => certificate) public certificates;

    constructor(){
        certifier = msg.sender;
    }

    function issueCertificate(address student, string calldata courseName) external{ //certificate issueing vulnerability
        certificates[student] = certificate(courseName, msg.sender);
    }

    function revokeCertificate(address student) external{ //certificate deletion vulnarebility
        delete certificates[student];
    }

    function notifyExternalContract(address notifier, address student) external{ //issues with low-level-call
        (bool success,) = notifier.call(
            abi.encodeWithSignature("onCertificateIssued(address)", student)
        );
        require(success, "External call has failed");
    }

    function getCertificate(address student) external view returns (string memory){ //function to return student's course name
        return certificates[student].course;
    }
}
