# My Gallery

A demo project that builds, tests, and deploys a Spring Boot gallery application with infrastructure as code and automated CI/CD validation.

The application is a minimal example for showcasing Java 21, Spring Boot, Maven, GitHub Actions, and Terraform-driven infrastructure.

## Technology stack

- **Java 21**
- **Spring Boot**
- **Maven**
- **GitHub Actions**
- **Terraform**
- **Dependabot**
- **Trivy**

## Project structure

- `app/` - Spring Boot application source code and Maven build configuration
- `.github/` - GitHub Actions workflows for CI and security scanning
- `policy/` - Policy definitions used by infrastructure and static analysis tooling
- `terraform/` - Terraform infrastructure configuration

## Getting started

### Run locally

```bash
cd app
./mvnw spring-boot:run
```

Then open `http://localhost:8080` in your browser.

### Build the application

```bash
cd app
./mvnw clean package
```

### Run unit tests

```bash
cd app
./mvnw test
```

## Documentation

This repository includes documentation for all primary directories:

- `app/` contains Java code with updated Javadoc and an application-specific README.
- `terraform/` includes infrastructure documentation and Terraform source comments.
- `policy/` includes Rego policy documentation and an explanation of the tag enforcement rule.
- `.github/` includes a workflow README describing the current automation pipelines.

For more details, see `app/README.md`, `terraform/README.md`, `policy/README.md`, and `.github/README.md`.

## CI/CD

The repository uses GitHub Actions to validate code, deploy infrastructure, and scan for issues:

- `.github/workflows/unit-tests.yml` runs Maven unit tests on pull requests to `main`
- `.github/workflows/trivy.yml` runs vulnerability scanning, dependency and container analysis, and secret detection
- `.github/workflows/terraform.yml` plans and applies Terraform infrastructure changes and runs Conftest policy validation

## Notes

This branch improves documentation for application code, infrastructure configuration, policy rules, and CI workflows.
