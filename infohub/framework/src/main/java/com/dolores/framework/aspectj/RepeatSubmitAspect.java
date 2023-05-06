package com.dolores.framework.aspectj;

import com.dolores.common.constants.Constants;
import com.dolores.framework.annotation.RepeatSubmit;
import com.dolores.framework.domain.json.JsonParser;
import com.dolores.framework.utils.DoloresRedis;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/**
 * 防止重复提交
 */
@Slf4j
@Aspect
@Component
@RequiredArgsConstructor
public class RepeatSubmitAspect {

    //args()切入点函数
    @Before(value = "@annotation(repeatSubmit)")
    public void doBefore(JoinPoint point, RepeatSubmit repeatSubmit) {
        long interval = repeatSubmit.interval();
        if (repeatSubmit.interval() > 0) {
            interval = repeatSubmit.timeUnit().toMillis(repeatSubmit.interval());
        }
        if (interval < 1000) {
            throw new RuntimeException("重复提交间隔不能小于1秒");
        }
        HttpServletRequest request = ((ServletRequestAttributes) Objects.requireNonNull(RequestContextHolder.getRequestAttributes())).getRequest();
        String params = null;
        Object[] args = point.getArgs();
        if (args != null && args.length > 0) {
            params = argsArrayToString(args);
        }
        String uri = request.getRequestURI();
        String userSessionId = request.getSession().getId();
        String repeatKey = Constants.REPEAT_SUBMIT_KEY + userSessionId + ":" + uri;
        if (StringUtils.isNotBlank(params)) {
            repeatKey += params;
        }
        String key = DoloresRedis.getHCache(Constants.REPEAT_SUBMIT, repeatKey);
        System.out.println("key ===> " + key);
        if (key == null) {
            System.out.println("进入");
            //TimeUnit.MILLISECONDS.toSeconds(interval) 时间单位转换 毫秒 -> 秒
            DoloresRedis.setHCacheByTime(Constants.REPEAT_SUBMIT, repeatKey, "LOCK", TimeUnit.MILLISECONDS.toSeconds(interval));
        } else {
            throw new RuntimeException("操作过于频发，请稍后尝试");
        }
    }

    /**
     * 参数拼装
     */
    private String argsArrayToString(Object[] paramsArr) {
        StringBuilder params = new StringBuilder();
        if (paramsArr != null) {
            for (Object obj : paramsArr) {
                try {
                    if (obj instanceof HttpServletRequest || obj instanceof HttpServletResponse) {
                        continue;
                    }
                    params.append(JsonParser.toJsonString(obj)).append(" ");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return params.toString().trim();
    }
}
