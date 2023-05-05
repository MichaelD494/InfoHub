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

    @SuppressWarnings("unchecked")
    public static <T> T parseJson(String json, Class<?> clazz) {
        try {
            return (T) INSTANCE.readValue(json, clazz);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }
}
