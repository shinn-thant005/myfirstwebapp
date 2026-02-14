package com.in23minutes.springboot.myfirstwebapp.login;

public class AuthenticationService {
    private final String username;
    private final String password;

    public AuthenticationService(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public boolean authenticate() {
        boolean validUsername = this.username.equalsIgnoreCase("sthant497@gmail.com");
        boolean validPassword = this.password.equals("dummy");
        return validUsername && validPassword;
    }
}
