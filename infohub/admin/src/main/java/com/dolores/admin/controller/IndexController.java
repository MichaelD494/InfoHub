package com.dolores.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {


    @GetMapping({"/","/login"})
    public String login() {
        System.out.println(1);
        return "login";
    }

    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }
}
