package com.in23minutes.springboot.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class sayHelloController {
    @RequestMapping("/say-hello")
    @ResponseBody
    public String sayHello(){
        return "Hello World";
    }

    @RequestMapping("/say-hello-html")
    @ResponseBody
    public String sayHelloHTML(){
        StringBuffer sb = new StringBuffer();
        sb.append("<html>");
        sb.append("<head>");
        sb.append("<title>Hello World</title>");
        sb.append("</head>");
        sb.append("<body>");
        sb.append("<h1>Hello World</h1>");
        sb.append("</body>");
        sb.append("<html>");

        return "Hello World";
    }

    // /src/main/resources/META-INF/resources/WEB-INF/jsp/sayHello.jsp
    // /src/main/resources/META-INF/resources/WEB-INF/jsp/welcome.jsp
    // /src/main/resources/META-INF/resources/WEB-INF/jsp/todo.jsp
    // /src/main/resources/META-INF/resources/WEB-INF/jsp/login.jsp

    @RequestMapping("/say-hello-jsp")
    public String sayHelloJSP() {
      return "sayHello";
    }




}
