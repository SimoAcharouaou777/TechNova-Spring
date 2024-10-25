package org.technova.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.technova.model.User;
import org.technova.service.UserService;

import java.util.List;

@Controller
@RequestMapping("users")
public class UserController {

    @Autowired
    private UserService userService;



    @GetMapping("/create")
    public String showCreateUserForm(Model model){
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "listUsers";
    }


}
