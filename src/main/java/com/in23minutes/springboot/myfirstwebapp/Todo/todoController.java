package com.in23minutes.springboot.myfirstwebapp.Todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;


import java.time.LocalDate;
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

    // GET, POSt
    @RequestMapping(value="add-todo", method = RequestMethod.GET)
    public String showNewTodo(ModelMap model) {
        String username = (String)model.get("name");
        Todo todo = new Todo(0, username, "", LocalDate.now().plusYears(1), false);
        model.put("todo", todo);
        return "todo";
    }

    @RequestMapping(value="add-todo", method = RequestMethod.POST)
    public String AddNewTodo(ModelMap model, Todo todo) {
        String username = (String)model.get("name");
        todoService.addTodo(username, todo.getDescription(), LocalDate.now().plusYears(1), false);
        return "redirect:list-todo";
    }

}
