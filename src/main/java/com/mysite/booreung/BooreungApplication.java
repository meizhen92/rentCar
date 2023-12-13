package com.mysite.booreung;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootApplication
@PropertySource("application-API-KEY.properties")
@MapperScan(basePackages = { "com.mysite.booreung" })
public class BooreungApplication {

	public static void main(String[] args) {
		SpringApplication.run(BooreungApplication.class, args);
	}

	/* security 관련 */
	@Bean
	public PasswordEncoder passwordEncoder() {
	    return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
}
