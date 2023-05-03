package com.dolores.framework.aspectj;

import com.dolores.common.constants.Constants;
import com.dolores.framework.annotation.RepeatSubmit;
import com.dolores.framework.domain.json.JsonParser;
import com.dolores.framework.properties.RepeatProperties;
import com.dolores.utils.DoloresEncrypt;
import com.dolores.utils.DoloresRedis;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.concurrent.TimeUnit;

/**
 * 防止重复提交
 *
 * @author Michael
 * @date 2022/2/19 13:37
 */
@Slf4j
@Aspect
@Component
public class RepeatSubmitAspect {
    @Autowired
    private RepeatProperties repeatProperties;

    //args()切入点函数
    @Before(value = "@annotation(repeatSubmit)&& args(request,..)")
    public void doBefore(JoinPoint point, RepeatSubmit repeatSubmit, HttpServletRequest request) {
        long interval = repeatProperties.getInterval();
        if (repeatSubmit.interval() > 0) {
            interval = repeatSubmit.timeUnit().toMillis(repeatSubmit.interval());
        }
        if (interval < 1000) {
            throw new RuntimeException("重复提交间隔不能小于1秒");
        }
        String params = argsArrayToString(point.getArgs());
        String uri = request.getRequestURI();

        String submitKey = request.getHeader("token");
        if (StringUtils.isEmpty(submitKey)) {
            submitKey = uri;
        }
        submitKey = DoloresEncrypt.md5(submitKey + ":" + params);
        String cacheRepeatKey = Constants.REPEAT_SUBMIT_KEY + submitKey;
        String key = DoloresRedis.getHCache(Constants.REPEAT_SUBMIT, cacheRepeatKey);
        if (key == null) {
            //TimeUnit.MILLISECONDS.toSeconds(interval) 时间单位转换 毫秒 -> 秒
            DoloresRedis.setHCacheByTime(Constants.REPEAT_SUBMIT, cacheRepeatKey, "", TimeUnit.MILLISECONDS.toSeconds(interval));
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
                    params.append(JsonParser.toJsonString(obj)).append(" ");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return params.toString().trim();
    }
}
