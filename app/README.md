# Gallery App

This directory contains the Spring Boot application for the gallery demo.

## Overview

The application is a simple Spring Boot service built with Java 21 and Maven. It is intended as a minimal example of a backend service that can be built, tested, and deployed with automated CI/CD and infrastructure tooling.

## Build

```bash
cd app
./mvnw clean package
```

## Run

```bash
cd app
./mvnw spring-boot:run
```

The service starts on `http://localhost:8080` by default.

## Tests

```bash
cd app
./mvnw test
```

## Structure

- `src/main/java` - application source code
- `src/test/java` - test classes and integration checks

## Notes

The application entry point is `com.example.demo.DemoApplication`.
