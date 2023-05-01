package com.dolores.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.system.domain.SysLoginRecord;
import com.dolores.system.mapper.SysLoginRecordMapper;
import com.dolores.system.service.ISysLoginRecordService;
import com.dolores.system.service.ISysUserService;
import com.dolores.utils.AddressUtils;
import com.dolores.utils.IPUtils;
import eu.bitwalker.useragentutils.OperatingSystem;
import eu.bitwalker.useragentutils.UserAgent;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;


/**
 * @author Michael
 * @since 2022-02-18
 */
@Service
public class SysLoginRecordServiceImpl extends ServiceImpl<SysLoginRecordMapper, SysLoginRecord> implements ISysLoginRecordService {

    private final ISysUserService sysUserService;

    public SysLoginRecordServiceImpl(ISysUserService sysUserService) {
        this.sysUserService = sysUserService;
    }

    @Override
    public void loginRecord(String sysUserId, String sysUsername, HttpServletRequest request) {
        //获取User-Agent字符串
        String userAgentString = request.getHeader("User-Agent");
        //使用UserAgentUtils解析User-Agent字符串
        UserAgent userAgent = UserAgent.parseUserAgentString(userAgentString);
        //输出浏览器名称
        String browserName = userAgent.getBrowser().getName();
        //获取用户操作系统
        OperatingSystem os = userAgent.getOperatingSystem();
        //获取真实IP地址
        String realIp = IPUtils.getRealIp(request);
        //根据IP地址获取所属地
        String loginAddress = AddressUtils.getRealAddressByIP(realIp);
        SysLoginRecord record = new SysLoginRecord(sysUserId, sysUsername, realIp, os.getName(), browserName, loginAddress);
        save(record);
        sysUserService.updateLoginLoginInfo(sysUserId, realIp);
    }

    @Override
    public boolean removeAll() {
        return baseMapper.removeAll();
    }
}
