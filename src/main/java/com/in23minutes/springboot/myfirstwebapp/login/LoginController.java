package com.in23minutes.springboot.myfirstwebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LoginController {
    AuthenticationService authentication;

    public LoginController(AuthenticationService authentication) {
        this.authentication = authentication;
    }

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

        if (authentication.authenticate(username, password)) {
            model.put("name", username);
            return "welcome-page";
        }
        model.put("errorMessage", "Invalid username or password");
        return "student-login";
    }
}
