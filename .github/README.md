# GitHub Actions Workflows

This directory contains GitHub Actions workflow definitions for CI, security scanning, and infrastructure validation.

## Workflows

- `unit-tests.yml` - runs Java unit tests on pull requests to `main`
- `trivy.yml` - scans for vulnerabilities, dependency issues, container image problems, and secrets
- `terraform.yml` - runs Terraform init and plan, exports a JSON plan file, and validates it with Conftest

## Notes

- All workflow files and their documentation are maintained in English.
- Keep CI pipeline docs up to date when workflow behavior changes.
