package com.dolores.framework.domain.jwt;

import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;

@Data
@Accessors(chain = true)
public class VerifyToken implements Serializable {
    private String token;
    private boolean verifyTokenFlag;
}
