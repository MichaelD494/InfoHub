package com.dolores.admin.controller.system.data;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.system.domain.SysUser;
import com.dolores.system.service.ISysUserService;
import com.dolores.utils.DoloresEncrypt;
import com.dolores.utils.StringUtils;
import lombok.RequiredArgsConstructor;
import org.aspectj.lang.annotation.RequiredTypes;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/sysUser")
@RequiredArgsConstructor
public class SysUserController extends BaseController {
    private final ISysUserService sysUserService;

    @PreAuthorize("hasAuthority('dolores:sysUser:list')")
    @PostMapping("/list")
    public AjaxResult list(@RequestBody SysUser sysUser) {
        List<SysUser> sysUserList = sysUserService.querySysUserList(sysUser);
        return success(sysUserList);
    }

    @PostMapping("/save")
    @PreAuthorize("hasAuthority('dolores:sysUser:add')")
    public AjaxResult save(@RequestBody SysUser sysUser) {
        if (sysUser == null) {
            return error("添加用户信息不能为空");
        }
        if (StringUtils.isBlank(sysUser.getUserName()) || StringUtils.isBlank(sysUser.getPassword())) {
            return error("用户名或密码为空，请补全信息");
        }
        String salt = DoloresEncrypt.generateSaltValue();
        String encryptPassword = DoloresEncrypt.encryptPassword(salt, sysUser.getPassword());
        sysUser.setSalt(salt);
        sysUser.setPassword(encryptPassword);
        sysUserService.save(sysUser);
        return success();
    }

    @GetMapping("/edit")
    @PreAuthorize("hasAuthority('dolores:sysUser:edit')")
    public AjaxResult edit(@RequestParam String userId) {
        if (StringUtils.isBlank(userId)) {
            return error("用户id不能为空");
        }
        LambdaQueryWrapper<SysUser> query = Wrappers.lambdaQuery(SysUser.class);
        query.eq(SysUser::getSysUserId, userId).last("limit 1");
        SysUser sysUser = sysUserService.getOne(query);
        return success(sysUser);
    }

    @PutMapping("/editSave")
    @PreAuthorize("hasAuthority('dolores:sysUser:edit')")
    public AjaxResult editSave(@RequestBody SysUser sysUser) {
        if (sysUser != null && sysUser.getSysUserId() == null) {
            return error("用户id不能为空");
        }
        if (sysUser != null) {
            String password = sysUser.getPassword();
            if (StringUtils.isNotBlank(password)) {
                String salt = DoloresEncrypt.generateSaltValue();
                String encryptPassword = DoloresEncrypt.encryptPassword(salt, password);
                sysUser.setSalt(salt);
                sysUser.setPassword(encryptPassword);
            }
            sysUserService.updateById(sysUser);
        }
        return success("修改成功");
    }


    @DeleteMapping("/remove")
    @PreAuthorize("hasAuthority('dolores:sysUser:remove')")
    public AjaxResult remove(@RequestParam String ids) {
        if (StringUtils.isBlank(ids)) {
            return error("删除id不能为空");
        }
        List<String> idList = Arrays.asList(ids.split(","));
        LambdaUpdateWrapper<SysUser> update = Wrappers.lambdaUpdate(SysUser.class);
        update
                .set(SysUser::getIsDelete, 1)
                .in(SysUser::getSysUserId, idList);
        sysUserService.update(update);
        return success();
    }
}
