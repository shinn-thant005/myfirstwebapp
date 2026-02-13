package com.in23minutes.springboot.myfirstwebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LoginController {
    @RequestMapping("/login")
    public String goTologinPage() {
        return "login";
    }

    @RequestMapping(value="student-login", method = RequestMethod.GET)
    public String goToStudentLoginPage() {
        return "student-login";
    }

    @RequestMapping(value="student-login", method = RequestMethod.POST)
    public String goToWelcomePage(@RequestParam String name, @RequestParam String password, ModelMap model){
        model.put("name", name);
        model.put("password", password);
        return "welcome-page";
    }
}
