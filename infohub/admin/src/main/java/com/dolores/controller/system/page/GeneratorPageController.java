package com.dolores.controller.system.page;

import com.dolores.framework.core.controller.BaseController;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/generatorPage")
public class GeneratorPageController extends BaseController {
    private final String prefix = "system/generator/";

    @GetMapping("/index")
    public String generator() {
        return prefix + "generator";
    }

    @GetMapping("/sync")
    public String sync() {
        return prefix + "sync";
    }
}
