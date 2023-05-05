package com.dolores.framework.domain.resource;

import com.dolores.framework.enums.SystemPathResource;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class InfoHubConfig {
    @Autowired
    private Environment environment;
    private String contentPath;
    private List<String> pathList;
    private String loginPagePath;

    @PostConstruct
    public void init() {
        contentPath = environment.getProperty("server.servlet.context-path");
        pathList = SystemPathResource.PATH_RESOURCE.getPathList();
        loginPagePath = contentPath + "/system/login";
    }

    public List<String> getPathList() {
        return pathList;
    }

    public String getLoginPagePath() {
        return loginPagePath;
    }

    public String getContentPath() {
        return contentPath;
    }
}
