package com.example.demo;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * Integration test suite for the demo Spring Boot application.
 *
 * <p>Verifies that the application can start successfully and that the Spring
 * application context loads without errors.
 */
@SpringBootTest
class DemoApplicationTests {

    /**
     * Smoke test that ensures Spring Boot can initialize the application context.
     */
    @Test
    void contextLoads() {
    }

}
