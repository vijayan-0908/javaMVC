package com.virtualJsp.MVC_JSP.service;

import com.virtualJsp.MVC_JSP.model.User;
import com.virtualJsp.MVC_JSP.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public List<User> getAllUsers(){
        return userRepository.findAll();
    }

    public User getUserById(int id){
        return userRepository.getReferenceById(id);
    }

    public void DeleteById(int id){
        userRepository.deleteById(id);
    }

    public User CreateUser(User user){
        return userRepository.save(user);
    }

    public User Update(User user ,int id){
        User person = new User(id, user.getName(), user.getAge(), user.getEmail(), user.getPhone(), user.getProfession());
        return userRepository.save(person);
    }
}
