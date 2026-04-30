# Policy Rules

This directory contains policy definitions used to validate infrastructure changes before they are applied.

## Terraform policy

- `terraform/tags.rego` enforces required AWS tags on Terraform-managed resources.
- The policy ensures that any resource created or updated by a plan includes the `project` and `created` tags.
- This helps enforce consistency, cost allocation, and compliance across the project.

## How policy is executed

The repository uses the GitHub workflow `terraform.yml` to run Conftest static analysis against the Terraform plan output.

## Rule behavior

The Rego rule checks `input.resource_changes` and denies changes when:

- a resource is created or updated
- the resource `tags` map does not contain one of the expected values
- the actual tag value does not match the expected policy value

## Notes

The policy is purposefully strict for demonstration, and it can be extended with additional requirements for naming, security, or resource type constraints.
