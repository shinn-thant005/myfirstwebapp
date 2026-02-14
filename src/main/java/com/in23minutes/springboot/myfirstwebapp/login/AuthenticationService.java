package com.in23minutes.springboot.myfirstwebapp.login;

public class AuthenticationService {

    public boolean authenticate(String username, String password) {
        boolean validUsername = username.equalsIgnoreCase("sthant497@gmail.com");
        boolean validPassword = password.equals("dummy");
        return validUsername && validPassword;
    }






}
