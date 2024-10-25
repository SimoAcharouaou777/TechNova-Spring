package org.technova.service;

import org.springframework.stereotype.Service;
import org.technova.model.User;

import java.util.List;



public interface UserService {
    void addUser(User user);
    User getUser(Long id);
    List<User> getAllUsers();
    void updateUser(User user);
    void deleteUser(Long id);
}
