package com.in23minutes.springboot.myfirstwebapp.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
public class SpringSecurityConfiguration {
    @Bean
    public InMemoryUserDetailsManager createUserDetailsManager() {
        UserDetails UserDetails = User.withDefaultPasswordEncoder()
                .username("shinnthant")
                .password("dummy")
                .roles("USER", "ADMIN")
                .build();
        return new InMemoryUserDetailsManager(UserDetails);
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

}
