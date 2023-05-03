package com.dolores.html.domain;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class JsoupResolver {
    private String query;
    private String attr;
    private String removeAttr;
    private String removeVal;
    private String appendStart;
    private String appendEnd;
}
