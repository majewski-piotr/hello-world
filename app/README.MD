# Hello World Spring Boot App

A simple Spring Boot application that demonstrates a basic "Hello World" REST endpoint.

## Features

- REST API with a single endpoint
- Spring Boot setup

## Prerequisites

- Java 21
- Maven 3.6+

## Installation

1. Navigate to the app directory:
   ```bash
   cd app
   ```

2. Build the application:
   ```bash
   mvn clean install
   ```

## Usage

Run the application:

```bash
mvn spring-boot:run
```

The app will start on `http://localhost:8080`.

### Endpoints

- `GET /hello` - Returns "Hello World!"

## Testing

Run unit tests:

```bash
mvn test
```

## CI/CD

- Unit tests are run automatically on pull requests to `main` via GitHub Actions.
- Security scanning with Trivy is performed on pull requests to `main`.

## Dependencies

Managed via Maven. See [pom.xml](pom.xml) for details.