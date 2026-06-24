# OCI Secure Landing Zone

A Terraform-based Oracle Cloud Infrastructure (OCI) landing zone designed to implement foundational cloud security controls, networking, identity management, secrets management, monitoring, and deployment automation.

## Overview

This project demonstrates how Infrastructure as Code (IaC) can be used to deploy and manage a secure Oracle Cloud Infrastructure (OCI) environment using Terraform.

The goal of this project is to establish a secure cloud foundation that follows cloud security best practices including:

* Network segmentation
* Least privilege access
* Secrets management
* Monitoring and logging
* Infrastructure as Code
* CI/CD integration

This project was created to gain hands-on experience with OCI while leveraging prior experience in Azure cloud administration, cloud security, and Terraform.

---

## Architecture

The landing zone consists of the following core components:

```text
Internet
    │
    ▼
Internet Gateway
    │
    ▼
VCN (10.0.0.0/16)
    │
 ┌──┴──────────────┐
 │                 │
 ▼                 ▼

Public Subnet      Private Subnet
10.0.1.0/24       10.0.2.0/24

 │                 │
 ▼                 ▼

Bastion Host    Application Server

        │
        ▼

OCI Vault
OCI Logging
OCI Monitoring
OCI IAM
```

---

## Project Objectives

* Deploy OCI infrastructure using Terraform
* Implement secure network segmentation
* Configure OCI Identity and Access Management (IAM)
* Secure sensitive information using OCI Vault
* Enable monitoring and logging capabilities
* Establish a foundation for CI/CD automation
* Demonstrate cloud security best practices

---

## Technologies Used

* Oracle Cloud Infrastructure (OCI)
* Terraform
* GitHub Actions
* OCI IAM
* OCI Vault
* OCI Monitoring
* OCI Logging

---

## Security Controls Implemented

### Network Segmentation

The environment is separated into public and private subnets to reduce attack surface exposure.

* Public subnet hosts administrative access resources.
* Private subnet hosts application workloads.
* Direct internet exposure is minimized.

### Least Privilege Access

OCI IAM policies are configured using the principle of least privilege.

Users and services are granted only the permissions necessary to perform their required functions.

### Secrets Management

Sensitive information is not stored directly within Terraform code.

Secrets should be stored within OCI Vault and referenced securely during deployments.

Examples:

* API Keys
* Database Credentials
* Certificates
* Encryption Keys

### Logging and Monitoring

Infrastructure activity should be monitored using OCI Logging and OCI Monitoring.

This provides visibility into:

* Authentication events
* Administrative activity
* Resource changes
* Security events

### Infrastructure as Code

All infrastructure components are managed through Terraform to ensure:

* Consistency
* Repeatability
* Version control
* Change tracking

---

## CI/CD Pipeline

This project is designed to support GitHub Actions deployment workflows.

Pipeline stages include:

### Terraform Format

```bash
terraform fmt
```

Ensures code follows Terraform formatting standards.

### Terraform Validation

```bash
terraform validate
```

Validates Terraform configuration syntax.

### Terraform Planning

```bash
terraform plan
```

Generates an execution plan before deployment.

### Terraform Deployment

```bash
terraform apply
```

Deploys infrastructure changes.

---

## Azure to OCI Service Mapping

| Microsoft Azure         | Oracle Cloud Infrastructure |
| ----------------------- | --------------------------- |
| Virtual Network (VNet)  | Virtual Cloud Network (VCN) |
| Network Security Group  | Network Security Group      |
| Virtual Machine         | Compute Instance            |
| Azure Key Vault         | OCI Vault                   |
| Azure Monitor           | OCI Monitoring              |
| Log Analytics Workspace | OCI Logging                 |
| Entra ID RBAC           | OCI IAM Policies            |
| Resource Group          | Compartment                 |

---

## Security Design Considerations

This landing zone follows several cloud security principles:

### Defense in Depth

Security controls are implemented across:

* Identity
* Network
* Infrastructure
* Monitoring

### Secure by Default

Infrastructure should be deployed with secure baseline configurations.

### Visibility and Monitoring

All critical infrastructure activities should be logged and monitored.

### Least Privilege

Access permissions should be restricted to only what is required.

---

## Key Areas Explored

* OCI Core Services
* OCI Networking
* OCI IAM
* OCI Vault
* Terraform on OCI
* CI/CD Design Patterns
* Cloud Security Architecture

---

Please note, Rename terraform.tfvars.example → terraform.tfvars before running terraform apply
