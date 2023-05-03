package com.dolores.framework.domain;

import org.springframework.util.AntPathMatcher;

public enum PathMatcher {
    PATH_MATCHER;

    private final AntPathMatcher antPathMatcher;

    PathMatcher() {
        antPathMatcher = new AntPathMatcher();
    }

    public AntPathMatcher getAntPathMatcher() {
        return antPathMatcher;
    }
}
