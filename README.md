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

This repository includes updated inline Javadoc comments for the Spring Boot application and test classes. The root README and application README also document the project layout, build steps, and test commands.

## CI/CD

The repository uses GitHub Actions to validate code and scan for issues:

- `unit-tests.yml` runs the Maven unit tests on pull requests to `main`
- `trivy.yml` runs vulnerability and secrets scanning on pull requests

## Notes

This branch focuses on improving documentation quality and ensuring that code comments follow standard Java documentation conventions.
