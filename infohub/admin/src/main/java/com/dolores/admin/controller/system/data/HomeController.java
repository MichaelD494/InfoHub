package com.dolores.admin.controller.system.data;

import com.dolores.framework.core.controller.BaseController;
import com.dolores.system.domain.vo.SysMenuVo;
import com.dolores.system.service.ISysMenuService;
import com.dolores.system.service.ISysUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/home")
@RequiredArgsConstructor
public class HomeController extends BaseController {
    private final ISysMenuService sysMenuService;

    @GetMapping()
    public String home(ModelMap modelMap) {
        String userId = getUserId();
        List<SysMenuVo> sysMenuList = sysMenuService.queryMenuList(userId);
        modelMap.put("sysMenuList", sysMenuList);
        return "system/home";
    }
}
