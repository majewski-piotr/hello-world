# Gallery Application

This directory contains the Spring Boot application source code and tests for the gallery demo.

## Overview

The application is a minimal Java 21 + Spring Boot service used to demonstrate build, test, and deployment workflows.

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

The service starts locally at `http://localhost:8080`.

## Test

```bash
cd app
./mvnw test
```

## Structure

- `src/main/java` - application source code
- `src/test/java` - test classes

## Notes

This directory uses standard Spring Boot conventions and should be documented in English for consistency.
