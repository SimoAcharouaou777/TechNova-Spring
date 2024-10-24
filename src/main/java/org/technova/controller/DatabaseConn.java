package org.technova.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DatabaseConn {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @GetMapping("/test")
    public String test(Model model){
        String message = "";
        try {
            jdbcTemplate.execute("SELECT 1");
            message = "Connection to database is successful";
        } catch (Exception e) {
            message = "Connection to database failed";
        }
        model.addAttribute("message", message);
        return "database";
    }
}
