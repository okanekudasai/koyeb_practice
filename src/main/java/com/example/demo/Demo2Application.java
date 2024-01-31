package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class Demo2Application {

    @GetMapping("/test")
    String test() {
        System.out.println("test");
        return "Hello world!!!!!!!";
    }

    public static void main(String[] args) {


        SpringApplication.run(Demo2Application.class, args);
    }

}
