package com.in23minutes.springboot.myfirstwebapp.Todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.ArrayList;

@Service
public class todoService {
    private static List<Todo> todos = new ArrayList<>();

    private static int todoCount = 0;
    static {
        todos.add(new Todo(++todoCount, "in28minutes","Learn AWS",
                LocalDate.now().plusYears(1), false ));
        todos.add(new Todo(++todoCount, "in28minutes","Learn DevOps",
                LocalDate.now().plusYears(2), false ));
        todos.add(new Todo(++todoCount, "in28minutes","Learn Full Stack Development",
                LocalDate.now().plusYears(3), false ));
    }

    public void addTodo(String username, String description, LocalDate targetDate, boolean isDone) {
        Todo newTodo = new Todo(++todoCount, username, description, targetDate, isDone);
        todos.add(newTodo);
    }
    public List<Todo> findByUsername(String username) {
        return todos;
    }
}
