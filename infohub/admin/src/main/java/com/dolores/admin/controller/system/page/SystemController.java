package com.dolores.admin.controller.system.page;

import com.dolores.framework.core.controller.BaseController;
import com.dolores.system.domain.vo.SysMenuVo;
import com.dolores.system.service.ISysMenuService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/system")
public class SystemController extends BaseController {

    private final ISysMenuService sysMenuService;

    @GetMapping("/login")
    public String loginPage() {
        return "system/login";
    }


    @GetMapping("/home")
    public String home(ModelMap modelMap) {
        String userId = getUserId();
        List<SysMenuVo> sysMenuList = sysMenuService.queryMenuList(userId);
        modelMap.put("sysMenuList", sysMenuList);
        return "system/home";
    }

}
