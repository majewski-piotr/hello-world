# Hello World Portfolio

This repository serves as a portfolio showcasing example projects and setups.

## Projects

- **[App](./app/)** - A simple Spring Boot Hello World application demonstrating basic setup.

## Getting Started

Clone the repository:

```bash
git clone https://github.com/yourusername/hello-world.git
cd hello-world
```

## Structure

- `app/` - Contains the Spring Boot application
- `.github/` - GitHub Actions workflows and Dependabot configuration
- `CHANGELOG.md` - Project changelog
- `LICENSE` - Project license
- `CONTRIBUTING.md` - Contribution guidelines
- `CODE_OF_CONDUCT.md` - Code of conduct
- `SECURITY.md` - Security policy

## CI/CD

This project uses GitHub Actions for continuous integration and security scanning.

- **Unit Tests**: Runs on pull requests to `main` branch, executing Maven tests.
- **Security Scanning**: Uses Trivy to scan for vulnerabilities on pull requests to `main`.

**Note**: Direct pushes to the `main` branch are blocked by branch protection rules. All changes must be made via pull requests.

## Dependency Management

Dependabot automatically checks for dependency updates weekly and creates grouped pull requests for updates.

## Security

See [SECURITY.md](SECURITY.md) for reporting vulnerabilities.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.