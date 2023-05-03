package com.dolores.framework.utils;

import cn.hutool.core.date.DateUtil;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.interfaces.DecodedJWT;
import io.jsonwebtoken.*;

import java.util.Date;

public class JwtUtils {


    /**
     * 过期时间24小时 24 * 60 * 60 * 1000
     */
    public static final long EXPIRE_TIME = 24 * 60 * 60 * 1000;
    /**
     * 随机密钥,不能泄露
     */
    private static final String RANDOM_SECRET = "2F9F0B25859EF5D2AEEA66AF4382F1B659188B84C1FF9053F291EA0F2588112141F884AE98E6C8CF54B1CC777FF9";

    /**
     * 校验token是否正确
     *
     * @param token token
     * @return 是否正确
     */
    public static boolean verify(String token, String userId, String password) {
        try {
            Algorithm algorithm = Algorithm.HMAC256(userId + ":" + RANDOM_SECRET + ":" + password);
            JWTVerifier verifier = JWT.require(algorithm).withClaim("userId", userId).build();
            verifier.verify(token);
            return true;
        } catch (Exception exception) {
            return false;
        }
    }

    /**
     * 获得token中的信息无需secret解密也能获得
     *
     * @return token中包含的用户名
     */
    public static String getUserId(String token) {
        try {
            DecodedJWT jwt = JWT.decode(token);
            return jwt.getClaim("userId").asString();
        } catch (JWTDecodeException e) {
            return null;
        }
    }

    /**
     * 生成签名
     *
     * @param userId 用户id
     * @return 加密的token
     */
    public static String generateToken(String userId, String loginPass) {
        Date date = new Date(System.currentTimeMillis() + EXPIRE_TIME);
        Algorithm algorithm = Algorithm.HMAC256(userId + ":" + RANDOM_SECRET + ":" + loginPass);
        // 附带userId信息
        String sign = JWT.create().withClaim("userId", userId).withExpiresAt(date).sign(algorithm);
        return sign;
    }

    /**
     * 解析JWT字符串
     *
     * @param token
     * @return
     * @throws Exception
     */
    public static Claims parseToken(String token) {
        Claims body = null;
        try {
            body = Jwts.parser()
                    .setSigningKey(RANDOM_SECRET)
                    .parseClaimsJws(token)
                    .getBody();
        } catch (ExpiredJwtException | UnsupportedJwtException | MalformedJwtException | SignatureException |
                 IllegalArgumentException e) {
            e.printStackTrace();
        }
        return body;
    }

    /**
     * token是否过期
     *
     * @param token token
     * @return 是否过期
     */
    public static boolean isExpireToken(String token) {
        Date expiresAt = JWT.decode(token).getExpiresAt();
        int compare = DateUtil.compare(DateUtil.date(), expiresAt);
        if (compare < 0) {
            return true;
        } else if (compare > 0) {
            return false;
        }
        return true;
    }
}
