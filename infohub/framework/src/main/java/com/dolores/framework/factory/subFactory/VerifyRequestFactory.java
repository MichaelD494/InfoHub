package com.dolores.framework.factory.subFactory;

import com.dolores.framework.factory.service.VerifyRequest;
import com.dolores.framework.factory.service.impl.VerifyRequestTool;
import org.apache.commons.lang.StringUtils;

/**
 * 系统资源工厂
 */
public class VerifyRequestFactory {
    public VerifyRequest getVerifyRequestTool(String toolName) {
        if (StringUtils.isBlank(toolName)) {
            return null;
        }

        if (toolName.equalsIgnoreCase("VerifyRequestTool")) {
            return new VerifyRequestTool();
        }
        return null;
    }
}
