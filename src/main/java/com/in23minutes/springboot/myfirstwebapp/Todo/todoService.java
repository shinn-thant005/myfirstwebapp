package com.in23minutes.springboot.myfirstwebapp.Todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.ArrayList;
import java.util.function.Predicate;

@Service
public class todoService {
    private static List<Todo> todos = new ArrayList<>();

    private static int todoCount = 0;
    static {
        todos.add(new Todo(++todoCount, "shinnthant","Learn AWS",
                LocalDate.now().plusYears(1), false ));
        todos.add(new Todo(++todoCount, "shinnthant","Learn DevOps",
                LocalDate.now().plusYears(2), false ));
        todos.add(new Todo(++todoCount, "shinnthant","Learn Full Stack Development",
                LocalDate.now().plusYears(3), false ));
    }

    public void addTodo(String username, String description, LocalDate targetDate, boolean isDone) {
        Todo newTodo = new Todo(++todoCount, username, description, targetDate, isDone);
        todos.add(newTodo);
    }

    public List<Todo> findByUsername(String username) {
        Predicate<? super Todo> predicate = todo -> todo.getUsername().equalsIgnoreCase(username);
        return todos.stream().filter(predicate).toList();
    }

    public void deleteTodoByID(int id) {
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        todos.removeIf(predicate);
    }

    public Todo findTodoByID(int id) {
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        return todos.stream().filter(predicate).findFirst().get();
    }

    public void updateTodo(@Valid Todo todo) {
        deleteTodoByID(todo.getId());
        todos.add(todo);
    }
}
