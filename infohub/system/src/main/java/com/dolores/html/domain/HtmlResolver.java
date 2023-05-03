package com.dolores.html.domain;

import lombok.Data;
import lombok.experimental.Accessors;


@Data
@Accessors(chain = true)
public class HtmlResolver {
    private String regx;
    private String appendData;
    private String removeData;
    private boolean isResolve;

    private LabelProperty labelProperty;
}
