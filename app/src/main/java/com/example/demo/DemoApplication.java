package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Application entry point for the Gallery demo service.
 *
 * <p>This class bootstraps the Spring Boot application and serves as the main
 * startup class for the demo project.
 */
@SpringBootApplication
public class DemoApplication {

    /**
     * Start the Spring Boot application.
     *
     * @param args the command-line arguments passed during startup
     */
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

}
