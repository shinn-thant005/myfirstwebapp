package com.in23minutes.springboot.myfirstwebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {
    @RequestMapping("/login")
    public String goTologinPage() {
        return "login";
    }

    @RequestMapping("student-login")
    public String goTostudentLoginPage() {
        return "student-login";
    }
}
