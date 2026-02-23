package com.in23minutes.springboot.myfirstwebapp;

import com.in23minutes.springboot.myfirstwebapp.Todo.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TodoRepository extends JpaRepository<Todo, Integer> {
    public List<Todo> findByUsername(String username);

}


