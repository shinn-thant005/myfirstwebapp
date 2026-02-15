package com.in23minutes.springboot.myfirstwebapp.Todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


import java.util.List;

@Controller
@SessionAttributes("name")
public class todoController {
    private todoService todoService;

    public todoController(todoService todoService) {
        this.todoService = todoService;
    }


    @RequestMapping("list-todo")
    public String ListAllTodos(ModelMap model) {
        List<Todo> todos = todoService.findByUsername("shinnthant");
        model.put("todos", todos);
        return "list-todo";
    }
}
