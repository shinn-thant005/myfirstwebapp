package com.in23minutes.springboot.myfirstwebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @RequestMapping("/login")
    public String goTologinPage(@RequestParam String name, ModelMap model) {
        model.addAttribute("name", name);
        System.out.println("Request Parameter: " + name); // Not Recommand for production code
        return "login";
    }

}
