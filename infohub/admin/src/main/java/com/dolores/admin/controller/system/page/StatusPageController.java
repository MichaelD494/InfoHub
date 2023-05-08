package com.dolores.admin.controller.system.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StatusPageController {
    private final String prefix = "system/status/";

    @GetMapping("/404")
    public String notFound() {
        return prefix + "404";
    }

    @GetMapping("/400")
    public String badRequest() {
        return prefix + "400";
    }

    @GetMapping("/403")
    public String forbidden() {
        return prefix + "403";
    }

    @GetMapping("/500")
    public String serverError() {
        return prefix + "500";
    }

    @GetMapping("/503")
    public String serviceUnavailable() {
        return prefix + "503";
    }
}
