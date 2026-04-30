package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Entry point for the Gallery demo Spring Boot application.
 *
 * <p>This application demonstrates a simple Java 21 + Spring Boot service used for
 * testing, deployment, and infrastructure automation scenarios.
 */
@SpringBootApplication
public class DemoApplication {

    /**
     * Start the Spring Boot application.
     *
     * @param args runtime arguments passed from the command line
     */
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

}
