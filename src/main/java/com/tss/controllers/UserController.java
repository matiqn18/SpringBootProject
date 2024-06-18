/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/SpringFramework/Controller.java to edit this template
 */
package com.tss.controllers;

import com.tss.entities.Users;
import com.tss.repositories.UserRepository;
import com.tss.services.UserService;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 *
 * @author Matian
 */
@Controller
public class UserController {
    
    
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserRepository userRepository;
    
    
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        System.out.println("AppControler initialized");
        this.userService = userService;
    }

    @GetMapping("/users")
    public String getAllUsers(Model model) {
        List<Users> user = userService.findAllUsers();
        model.addAttribute("user", user);
        return "/views/usersList.jsp"; 
    }
    
    @GetMapping("/users/add")
    public String showAddUserForm(Model model) {
        model.addAttribute("action", "add");
        model.addAttribute("actionType", "Add");
        model.addAttribute("user", new Users()); 
        return "/views/userForm.jsp";
    }
    
    @GetMapping("/users/edit/{id}")
    public String showEditUserForm(@PathVariable("id") Long id, Model model) {
        Users user = userService.getUserById(id).orElseThrow(() -> new IllegalArgumentException("Invalid user ID: " + id));
        model.addAttribute("action", "edit/" + id);
        model.addAttribute("actionType", "Edit");
        model.addAttribute("user", user);
        return "/views/userForm.jsp";
    }
    
        
    @PostMapping("/users/add")
    public String addUser(@ModelAttribute Users user) {
        userRepository.save(user);
        return "redirect:/users";
    }
    
    @PostMapping("/users/edit/{id}")
    public String updateUser(@PathVariable Long id, @ModelAttribute Users user) {
        user.setId(id);
        userRepository.save(user);
        return "redirect:/users";
    }

    @PostMapping("/users/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        userRepository.deleteById(id);
        return "redirect:/users";
    }
    
    
    
}
