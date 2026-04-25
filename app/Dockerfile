# --- STAGE 1: Build Stage ---
FROM eclipse-temurin:25-jdk-alpine AS build
WORKDIR /app

# 1. Copy Maven wrapper and project configuration
# We copy these separately to leverage Docker layer caching
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# 2. Fix potential Windows line endings and set execution permissions
RUN tr -d '\r' < mvnw > mvnw_unix && mv mvnw_unix mvnw
RUN chmod +x mvnw

# 3. Resolve dependencies (this layer is cached unless pom.xml changes)
RUN ./mvnw dependency:go-offline -B || true 

# 4. Copy source code and build the application
COPY src ./src
RUN ./mvnw clean package -DskipTests

# --- STAGE 2: Runtime Stage ---
FROM eclipse-temurin:25-jre-alpine
WORKDIR /app

# 5. Security: Create a non-root user to run the application
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring

# 6. Copy only the built JAR from the build stage
# Using a wildcard to match the versioned filename produced by Maven
COPY --from=build /app/target/*.jar app.jar

# 7. Standard Spring Boot port
EXPOSE 8080

# 8. Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]