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
    public String goToWelcomePage(@RequestParam String username, @RequestParam String password, ModelMap model){
        AuthenticationService authentication = new AuthenticationService(username, password);
        if(authentication.authenticate()) {
            model.put("name", username);
            model.put("password", password);
            return "welcome-page";
        }
        return "student-login";
    }
}
