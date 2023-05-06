package com.dolores.framework.factory.service.impl;

import com.dolores.framework.domain.html.PathMatcher;
import com.dolores.framework.domain.resource.InfoHubConfig;
import com.dolores.framework.factory.service.VerifyRequest;
import com.dolores.utils.SpringContextHolder;
import org.springframework.util.AntPathMatcher;

import java.util.List;
import java.util.Optional;

public class VerifyRequestTool implements VerifyRequest {

    @Override
    public boolean verifyPath(String requestUri) {
        InfoHubConfig infoHubConfig = SpringContextHolder.getBean(InfoHubConfig.class);
        //获取系统路径资源
        List<String> pathList = infoHubConfig.getPathList();
        //校验是否存在系统资源,如果存在则执行放行
        if (pathList != null && pathList.size() > 0) {
            AntPathMatcher antPathMatcher = PathMatcher.PATH_MATCHER.getAntPathMatcher();
            Optional<String> any = pathList.stream().filter(path -> antPathMatcher.match(path, requestUri)).findAny();
            return any.isPresent();
        }
        return false;
    }
}
