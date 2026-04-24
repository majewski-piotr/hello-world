# My Gallery 

This my demo project in which i build test deploy my gallery java app along with necessary iaac and showcase my automation solutions along the way.
Application will be displaying my hobby photos.

stack includes:

**dependabot** | **trivy**<br>
**github actions**<br>
**java 21** | **spring boot** | **maven**



## Structure

- `app/` - Contains the Spring Boot application
- `.github/` - GitHub Actions workflows and Dependabot configuration

## CI/CD

This project uses GitHub Actions for continuous integration and security scanning.

- **Unit Tests**: Runs on pull requests to `main` branch, executing Maven tests.
- **Security Scanning**: Uses Trivy to scan for vulnerabilities on pull requests to `main`.
