package com.dolores.admin.controller.system.page;

import com.dolores.framework.core.controller.BaseController;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/sysUserPage")
public class SysUserPageController extends BaseController {
    private final String prefix = "system/user/";

    @GetMapping("/index")
    public String index() {
        return prefix + "account";
    }

    @GetMapping("/add")
    public String add() {
        return prefix + "add";
    }

}
