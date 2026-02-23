package com.in23minutes.springboot.myfirstwebapp.Todo;

import com.in23minutes.springboot.myfirstwebapp.TodoRepository;
import jakarta.validation.Valid;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("name")
public class todoControllerJpa {
    private TodoRepository todoRepository;

    public todoControllerJpa(TodoRepository todoRepository) {
        this.todoRepository = todoRepository;
    }

    @RequestMapping("list-todo")
    public String ListAllTodos(ModelMap model) {
        String username = getLoggedinUsername(model);
        List<Todo> todos = todoRepository.findByUsername(username);
        model.put("todos", todos);
        return "list-todo";
    }

    // GET, POSt
    @RequestMapping(value="add-todo", method = RequestMethod.GET)
    public String showNewTodo(ModelMap model) {
        String username = getLoggedinUsername(model);
        Todo todo = new Todo(0, username, "", LocalDate.now().plusYears(1), false);
        model.put("todo", todo);
        return "todo";
    }

    @RequestMapping(value="add-todo", method = RequestMethod.POST)
    public String AddNewTodo(ModelMap model, @Valid Todo todo, BindingResult result) {
        if (result.hasErrors()) {
            return "todo";
        }
        String username = getLoggedinUsername(model);
        todo.setUsername(username);
        todoRepository.save(todo);
        return "redirect:list-todo";
    }

    @RequestMapping("delete-todo")
    public String DeleteTodos(@RequestParam int id) {
        todoRepository.deleteById(id);
        return "redirect:list-todo";
    }

    @RequestMapping(value="update-todo", method = RequestMethod.GET)
    public String ShowUpdateTodoPage(@RequestParam int id, ModelMap model) {
        Todo todo = todoRepository.findById(id).get();
        model.addAttribute("todo", todo);
        return "todo";
    }

    @RequestMapping(value="update-todo", method = RequestMethod.POST)
    public String updateTodo(ModelMap model, @Valid Todo todo, BindingResult result) {
        if (result.hasErrors()) {
            return "todo";
        }
        String username = getLoggedinUsername(model);
        todo.setUsername(username);
        todoRepository.save(todo);
        return "redirect:list-todo";
    }

    private static String getLoggedinUsername(ModelMap model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }

}
