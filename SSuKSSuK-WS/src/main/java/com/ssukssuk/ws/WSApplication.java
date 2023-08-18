package com.ssukssuk.ws;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;

@EnableDiscoveryClient
@SpringBootApplication
public class WSApplication {

	@Value("${spring.profiles.active}")
	private String propertyType;

	@Value("${server.port}")
	private int port;

	@Value("${spring.application.name}")
	private String serverName;

	private static final Logger logger = LoggerFactory.getLogger(WSApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(WSApplication.class, args);
	}

	@Bean
	public CommandLineRunner runner() {
		return (a) -> {
			logger.info("###############################################################");
			logger.info("##["+serverName+":"+port+" Server ON ~! ] Active Mode is " + propertyType);
			logger.info("###############################################################");
		};
	};

}
