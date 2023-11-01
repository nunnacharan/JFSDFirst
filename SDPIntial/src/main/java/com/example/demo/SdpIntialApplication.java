package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SdpIntialApplication {

	public static void main(String[] args) {
		SpringApplication.run(SdpIntialApplication.class, args);
		System.out.println("Server Started");
	}

}
