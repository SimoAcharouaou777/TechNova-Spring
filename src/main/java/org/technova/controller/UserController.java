package org.technova.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.technova.model.User;
import org.technova.service.UserService;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("users")
public class UserController {

    @Autowired
    private UserService userService;



    @GetMapping("/list")
    public String showCreateUserForm(Model model){
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "listUsers";
    }

    @GetMapping("/create")
    public String showCreateUserForm(User user){
        return "createUser";
    }

    @PostMapping("/create")
    public String createUser(User user){
        userService.addUser(user);
        return "redirect:/users/list";
    }

    @GetMapping("/update/{id}")
    public String showUpdateUserForm(@PathVariable("id") Long id, Model model){
        User user = userService.getUser(id);
        if(user == null){
            return "redirect:/users/list";
        }
        model.addAttribute("user", user);
        return "updateUser";
    }

    @PostMapping("/update/{id}")
    public String updateUser(@PathVariable("id") Long id , User user){
        User existingUser = userService.getUser(id);
        if (existingUser == null){
            return "redirect:/users/list";
        }
        if(user.getFirstName() != null){
            existingUser.setFirstName(user.getFirstName());
        }
        if (user.getLastName() != null){
            existingUser.setLastName(user.getLastName());
        }
        if(user.getUserName() != null){
            existingUser.setUserName(user.getUserName());
        }
        if(user.getEmail() != null){
            existingUser.setEmail(user.getEmail());
        }
        userService.updateUser(existingUser);
        return "redirect:/users/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id") long id){
        userService.deleteUser(id);
        return "redirect:/users/list";
    }


}
