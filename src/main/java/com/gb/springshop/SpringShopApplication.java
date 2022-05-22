package com.gb.springshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class SpringShopApplication {

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    //в методичке бин находится в SecurityConfig, у меня зацикливаются SecurityConfig и UserService

    public static void main(String[] args) {
        SpringApplication.run(SpringShopApplication.class, args);
    }
}
