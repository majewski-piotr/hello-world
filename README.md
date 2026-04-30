# My Gallery

A demo project that builds, tests, and deploys a Spring Boot gallery application using modern CI/CD and infrastructure tooling.

The repository demonstrates a minimal Java + Spring Boot application, Terraform infrastructure provisioning, and policy-driven validation using Rego.

## Technology stack

- Java 21
- Spring Boot
- Maven
- GitHub Actions
- Terraform
- Open Policy Agent / Rego
- Trivy

## Project structure

- `app/` - Spring Boot application source code, unit tests, and app-specific documentation
- `terraform/` - Terraform infrastructure definitions and module configuration
- `policy/` - Rego policy rules for Terraform plan validation
- `.github/` - GitHub Actions workflows for CI, security, and infrastructure checks

## Getting started

### Run the application locally

```bash
cd app
./mvnw spring-boot:run
```

Open `http://localhost:8080` to access the running application.

### Build the application

```bash
cd app
./mvnw clean package
```

### Run tests

```bash
cd app
./mvnw test
```

## Documentation coverage

This repository now includes documentation and README files for all major directories:

- `README.md` (root)
- `app/README.md`
- `terraform/README.md`
- `policy/README.md`
- `.github/README.md`

All documentation is maintained in English for consistency and team accessibility.

## CI/CD

The repository uses GitHub Actions to validate code and infrastructure:

- `unit-tests.yml` runs Java unit tests on pull requests to `main`
- `trivy.yml` scans for vulnerabilities, secrets, and other security issues
- `terraform.yml` validates Terraform plans and runs policy checks

## Notes

The documentation has been updated to cover the application, infrastructure, policy, and workflow directories.
