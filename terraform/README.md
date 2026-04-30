# Terraform Infrastructure

This directory contains the Terraform configuration used to provision the infrastructure for the gallery demo.

## Overview

The repository uses Terraform to manage AWS infrastructure and store remote state in S3.

- `backend.tf` configures remote state storage and AWS provider requirements
- `main.tf` defines provider configuration, data lookups, and the ECR module
- `vars.tf` declares reusable variables for project name and AWS region
- `outputs.tf` exposes the ECR repository URL as a Terraform output
- `ecr/` contains a reusable module that provisions the AWS ECR repository

## Usage

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

## Important files

- `ecr/main.tf` creates the Amazon ECR repository with image scanning enabled
- `ecr/outputs.tf` exports the repository URL for use by deployment tooling

## Notes

The Terraform stack is intentionally small and focused on a container registry, so it is easy to extend with additional AWS resources in the future.
