package com.dolores.framework.domain.json;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonParser {
    private static final ObjectMapper INSTANCE = new ObjectMapper();

    public static ObjectMapper getInstance() {
        return INSTANCE;
    }

    public static String toJsonString(Object value) throws JsonProcessingException {
        return INSTANCE.writeValueAsString(value);
    }
}
