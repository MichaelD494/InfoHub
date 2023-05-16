package com.dolores.admin.controller.system.data;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.framework.domain.common.TableDataInfo;
import com.dolores.system.domain.PageDetail;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.SysUserRole;
import com.dolores.system.domain.dto.SysUserDto;
import com.dolores.system.service.ISysUserRoleService;
import com.dolores.system.service.ISysUserService;
import com.dolores.utils.DoloresEncrypt;
import com.dolores.utils.StringUtils;
import com.github.pagehelper.PageHelper;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("/sysUser")
@RequiredArgsConstructor
public class SysUserController extends BaseController {
    private final ISysUserService sysUserService;
    private final ISysUserRoleService sysUserRoleService;

    @PreAuthorize("hasAuthority('dolores:sysUser:list')")
    @PostMapping("/list")
    public TableDataInfo list(@RequestBody SysUser sysUser) {
        startPage();
        List<SysUser> sysUserList = sysUserService.querySysUserList(sysUser);
        return TableDataInfo.init(sysUserList);
    }

    @PostMapping("/save")
    @PreAuthorize("hasAuthority('dolores:sysUser:add')")
    public AjaxResult save(@RequestBody SysUserDto dto) {
        SysUser sysUser = dto.getSysUser();
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
        List<String> roleIdList = Arrays.asList(dto.getRoleId().split(","));
        sysUserRoleService.saveSysUserRole(sysUser.getUserId(), roleIdList);
        return success();
    }

    @PutMapping("/editSave")
    @PreAuthorize("hasAuthority('dolores:sysUser:edit')")
    public AjaxResult editSave(@RequestBody SysUserDto dto) {
        if (dto == null || dto.getSysUser() == null) {
            return error("对象不能为空");
        }
        SysUser sysUser = dto.getSysUser();
        if (sysUser.getUserId() == null) {
            return error("用户id不能为空");
        }
        String userId = sysUser.getUserId();
        String password = sysUser.getPassword();
        if (StringUtils.isNotEmpty(password)) {
            String salt = DoloresEncrypt.generateSaltValue();
            String encryptPassword = DoloresEncrypt.encryptPassword(salt, password);
            sysUser.setSalt(salt);
            sysUser.setPassword(encryptPassword);
            sysUser.setPwdUpdateDate(new Date());
        }
        String roleIds = dto.getRoleId();
        if (StringUtils.isNotEmpty(roleIds)) {
            List<String> roleIdList = Arrays.asList(roleIds.split(","));
            Set<String> hashSet = new HashSet<>(roleIdList);
            LambdaQueryWrapper<SysUserRole> userRoleQuery = Wrappers.lambdaQuery(SysUserRole.class);
            userRoleQuery
                    .select(SysUserRole::getId, SysUserRole::getRoleId)
                    .eq(SysUserRole::getUserId, userId);
            List<SysUserRole> userRoleList = sysUserRoleService.list(userRoleQuery);
            if (userRoleList.size() > 0) {
                List<String> existList = userRoleList
                        .stream()
                        .map(SysUserRole::getRoleId)
                        .map(String::valueOf)
                        .toList();
                if (!hashSet.containsAll(existList)) {
                    List<Long> idList = userRoleList.stream().map(SysUserRole::getId).toList();
                    sysUserRoleService.removeBatchByIds(idList);
                    sysUserRoleService.saveSysUserRole(sysUser.getUserId(), roleIdList);
                }
            }
        }
        sysUserService.updateById(sysUser);
        return success("修改成功");
    }


    @DeleteMapping("/remove/{ids}")
    @PreAuthorize("hasAuthority('dolores:sysUser:remove')")
    public AjaxResult remove(@PathVariable("ids") String ids) {
        if (StringUtils.isBlank(ids)) {
            return error("删除id不能为空");
        }
        List<String> idList = Arrays.asList(ids.split(","));
        LambdaUpdateWrapper<SysUser> update = Wrappers.lambdaUpdate(SysUser.class);
        update
                .set(SysUser::getIsDelete, 1)
                .in(SysUser::getUserId, idList);
        sysUserService.update(update);
        return success();
    }
}
