package com.dolores.admin.controller.system.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/system")
public class SystemController {

    @GetMapping("/login")
    public String loginPage() {
        return "/system/login";
    }

    @GetMapping("/home")
    public String homePage() {
        return "/system/home";
    }

}
