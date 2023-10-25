package com.example.springdocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.test.context.TestConfiguration;

@TestConfiguration(proxyBeanMethods = false)
public class TestSpringdockerApplication {

	public static void main(String[] args) {
		SpringApplication.from(SpringdockerApplication::main).with(TestSpringdockerApplication.class).run(args);
	}

}
