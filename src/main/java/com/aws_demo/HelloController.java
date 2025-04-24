package com.aws_demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class HelloController {

    @GetMapping("/hello")
    public String hello() {
        return """
                <h1>HI there!!!</h1>
                """;
    }
}
