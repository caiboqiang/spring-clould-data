package com.springcloulddata;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class SpringClouldDataApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringClouldDataApplication.class, args);
    }

}

