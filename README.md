# Vulnerable Smart Contract Verification

A smart contract security analysis focused on detecting and demonstrating common vulnerabilities in Solidity-based Ethereum contracts. This lab simulates real-world DeFi exploit scenarios and insecure Web3 development practices using static and dynamic analysis tools such as Slither, Mythril, and Remix IDE.

This project offers a step-by-step setup and demonstration of vulnerable smart contract development, vulnerability discovery, and automated analysis techniques. It is designed for cybersecurity researchers, blockchain developers, and smart contract auditors seeking practical exposure to Ethereum security pitfalls, audit tools, and best practices.



## Project Objective

To simulate an insecure decentralized certificate registry contract, intentionally built with common vulnerabilities such as:
- Improper access control
- Reentrancy attacks
- Uninitialized storage variables
- Insecure design patterns

This environment enables users to test and understand how automated tools identify and report such issues.

---

## Smart Contract Used

### Certificate Registry Contract
A Solidity-based registry allowing issuers to issue and revoke course certificates to student addresses. The contract is intentionally left vulnerable for analysis and testing purposes.

---

## Tools Used for Analysis

- **Slither** – Static analysis framework for Solidity smart contracts
- **Mythril** – Security analysis tool for Ethereum bytecode
- **Remix IDE** – Web-based IDE for Solidity development and testing

---

## Vulnerabilities Demonstrated

- Public access to critical functions
- Lack of ownership and role-based checks
- Reentrancy potential in revoke logic
- Improper use of `tx.origin`
- Unchecked return values

---
