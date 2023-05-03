package com.dolores.html.domain;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class LabelProperty {
    private String property;
    private String value;
    private String regx;
    private String appendData;
    private String startSign;
    private String middleSign;
    private String endSign;
    private String removeData;
}
