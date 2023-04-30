package com.dolores.admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@MapperScan({"com.dolores.*.mapper"})
@SpringBootApplication(scanBasePackages = "com.dolores.**")
public class InfohubApplication {

	public static void main(String[] args) {
		SpringApplication.run(InfohubApplication.class, args);
	}

}
