# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Fixed
- Fixed Dependabot YAML syntax error by removing unsupported groups for github-actions ecosystem

## [1.0.0] - 2026-04-24

### Added
- Initial release of Spring Boot Hello World application
- REST API with `/hello` endpoint returning "Hello World!"
- Unit tests for the application and controller
- CI/CD with GitHub Actions:
  - Unit tests workflow on pull requests to main
  - Trivy security scanning on pull requests to main
- Dependabot configuration for automated dependency updates (Maven and GitHub Actions)
- Branch protection rules for main branch (requires PRs, status checks, reviews)
- Comprehensive documentation:
  - README.md with setup and usage instructions
  - CONTRIBUTING.md with contribution guidelines
  - CODE_OF_CONDUCT.md based on Contributor Covenant
  - SECURITY.md for vulnerability reporting
  - LICENSE (MIT)

### Technical Details
- Java 21, Spring Boot 3.3.0
- Maven build system with wrapper
- Spring Boot Actuator for monitoring
- GitHub repository with public access for portfolio