package com.in23minutes.springboot.myfirstwebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @RequestMapping("/login")
    public String goTologinPage(@RequestParam int id, ModelMap model) {
        if (id == 21) {
            model.addAttribute("name", "Shinn");
        }
        else {
            model.addAttribute("name", "Guest");
        }

        System.out.println("Request Parameter: " + "Shinn"); // Not Recommend for production code
        return "login";
    }




}
