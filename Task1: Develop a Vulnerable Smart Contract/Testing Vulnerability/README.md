After we purposefully implemented vulnerabilites in the smart contract. We tested these vulnerabilities;

## Issuing Certificates
The `issueCertificate` function allows certificates to be issued without verifying whether they actually belong to the intended user.

![image](https://github.com/user-attachments/assets/966a8093-fe9d-49c6-b3a2-ef52a676e393)

Testing:

![image](https://github.com/user-attachments/assets/4e6aed23-e5bb-49c6-9dc7-9338fcf8b60c)
![image](https://github.com/user-attachments/assets/b30dc164-f36c-4f37-9474-fdc49ee8c438)
        
## Deleting Certificates
The `revokeCertificate` function permits certificates to be revoked without any verification of ownership or authorization.

Testing:

![image](https://github.com/user-attachments/assets/cc4c58df-90f0-446d-b0f8-9ba0ba5d365f)
![image](https://github.com/user-attachments/assets/c3accec2-e158-43cd-af25-58893fa90cfe)
![image](https://github.com/user-attachments/assets/50c2c4cc-6c56-43fa-9812-3bf9f3a7a0a8)
    
## Low Level Call
The `notifyExternalContract` function relies on a low-level call to interact with external contracts, which introduces potential security risks such as reentrancy attacks or unexpected behavior from malicious contracts, due to the lack of interface validation and control flow checks.

![image](https://github.com/user-attachments/assets/89da625c-30cd-4d6c-aedf-b2f6bee98ef7)

Testing:

![image](https://github.com/user-attachments/assets/cdb88ca7-a6fc-48b5-a2ec-f54d004f86bc)
![image](https://github.com/user-attachments/assets/2ec677f6-cb14-44e6-9802-5e89a6b65886)

More detailed report [here](https://github.com/SMUGLER79/Cerify-Audit-Verification-Workflow/tree/main/Task2%3A%20Auditing%20Contract).
