# Terraform Infrastructure

This directory contains Terraform code to provision AWS infrastructure for the gallery demo.

## Overview

The Terraform stack is intentionally small and focused on creating an Amazon ECR repository and managing remote state.

## Files

- `backend.tf` - remote state backend configuration and provider requirements
- `main.tf` - AWS provider configuration, data sources, and module references
- `vars.tf` - variable definitions for reusable values
- `outputs.tf` - Terraform outputs exposed after apply
- `ecr/` - module that provisions the Amazon ECR repository

## Usage

```bash
cd terraform
tfenv install || terraform init
terraform init
terraform plan
terraform apply
```

## Notes

- Terraform state is stored in an S3 bucket with encryption and locking enabled.
- The AWS region is set to `eu-central-1`.
- Documentation and comments are written in English.
