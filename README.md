# Terraform AWS Infrastructure for DevOps Course Task 1

## Description

This repository contains Terraform code to create:

- An S3 bucket for Terraform state storage
- An IAM role for GitHub Actions with necessary permissions
- Backend configuration for Terraform state management

## Prerequisites

- AWS CLI installed and configured with appropriate IAM user and MFA enabled
- Terraform version 1.6+
- GitHub repository configured with secrets for AWS OIDC integration

## How to use

1. Clone this repository.
2. Configure your AWS CLI credentials.
3. Run `terraform init` to initialize the backend.
4. Run `terraform plan` to see planned changes.
5. Run `terraform apply` to deploy infrastructure.

## GitHub Actions workflow

- The workflow runs on push and pull request to the main branch.
- Jobs include:
  - Terraform formatting check
  - Terraform plan
  - Terraform apply

## Additional Notes

- Terraform state locking via DynamoDB is implemented in this task.
- GitHub secrets and IAM role trust policies are configured.

