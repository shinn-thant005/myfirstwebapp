package com.in23minutes.springboot.myfirstwebapp.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public boolean authenticate(String username, String password) {
        boolean validUsername = username.equalsIgnoreCase("sthant497@gmail.com");
        boolean validPassword = password.equals("dummy");
        return validUsername && validPassword;
    }












}
