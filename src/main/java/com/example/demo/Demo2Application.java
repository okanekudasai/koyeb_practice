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
        System.out.println("testaaaa");
        return "Hello world@@@@@@!!!!!!!";
    }

    @GetMapping("/ev")
    String ev() {
        System.out.println("fefefef");
        return System.getenv("DATA");
    }


    public static void main(String[] args) {


        SpringApplication.run(Demo2Application.class, args);
    }

}
