package com.dolores.admin.controller.system;

import com.dolores.common.core.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController extends BaseController {
    @GetMapping("/homePage")
    public String homePage() {
        System.out.println("进入");
        return "/system/home";
    }
}
