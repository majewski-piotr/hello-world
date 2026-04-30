# GitHub Actions Workflows

This directory contains GitHub Actions workflows for CI, security scanning, and infrastructure validation.

## Workflows

- `unit-tests.yml` runs the Java unit tests on pull requests targeting `main`.
- `trivy.yml` performs vulnerability scanning, dependency scanning, Docker image analysis, and secrets scanning.
- `terraform.yml` runs Terraform init/plan, generates a JSON plan output, and executes Conftest policy validation.

## Notes

The workflows are designed to enforce code quality, security, and infrastructure policy checks as part of the pull request process.
