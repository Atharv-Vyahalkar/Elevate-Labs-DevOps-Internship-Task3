# Task 3 – Infrastructure as Code (IaC) with Terraform

## Overview
This project demonstrates Infrastructure as Code (IaC) using Terraform and Docker. Terraform is used to provision and manage a local Docker container running an Nginx web server.

## Objective
To understand how Terraform automates infrastructure provisioning, resource management, state tracking, and infrastructure destruction.

## Technologies Used
- Terraform
- Docker Desktop
- Nginx
- Visual Studio Code
- Windows 11

## Project Structure
```text
Task-3-Terraform/
├── main.tf
├── README.md
├── .gitignore
└── screenshots/
```

## Implementation Steps

### 1. Terraform Initialization
```bash
terraform init
```
Initialized the Terraform working directory and downloaded the required Docker provider.

### 2. Infrastructure Planning
```bash
terraform plan
```
Generated an execution plan to preview the resources Terraform would create.

### 3. Infrastructure Provisioning
```bash
terraform apply
```
Created the Nginx Docker image resource and Docker container using Terraform.

### 4. Application Verification
The Nginx container was successfully accessed through:

http://localhost:8081

### 5. Terraform State Management
```bash
terraform state list
terraform state show docker_container.nginx_container
terraform show
```
Inspected the Terraform-managed resources and their configuration.

### 6. Infrastructure Destruction
```bash
terraform destroy
```
Successfully destroyed the Terraform-managed resources.

### 7. Final Verification
```bash
docker ps
terraform state list
```
Verified that the Terraform-created container was no longer running and that the Terraform state contained no managed resources.

## Key Learnings
- Understanding Infrastructure as Code (IaC).
- Configuring Terraform providers.
- Creating Docker resources using Terraform.
- Understanding Terraform initialization, planning and applying.
- Managing infrastructure using Terraform state.
- Destroying infrastructure using Terraform.

## Outcome
Successfully provisioned, accessed, inspected and destroyed a local Docker container using Terraform.

This project demonstrates the basic infrastructure lifecycle using Infrastructure as Code.