package com.virtualJsp.MVC_JSP.controller;

import com.virtualJsp.MVC_JSP.model.User;
import com.virtualJsp.MVC_JSP.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
        return "Hello from this side";
    }

    @RequestMapping("/hello_show")
    public String show(){
        return "hello";
    }

    //get all the users and show in table
    @RequestMapping("/")
    public String AllUsers(Model model){
        List<User> users = userService.getAllUsers();
        model.addAttribute("employees",users);
        return "employee";
    }

    //create a new user
    @RequestMapping("/new")
    public String newUser(Model model){
        User user = new User();
        model.addAttribute("user",user);
        return "employee_form";
    }

    //save the new users;
    @PostMapping("/save")
    public String saveUser(@ModelAttribute User users,RedirectAttributes redirectAttributes){
        userService.CreateUser(users);
        redirectAttributes.addFlashAttribute("message_success","New Employee Created SuccessFully");
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable int id,RedirectAttributes redirectAttributes){
        userService.DeleteById(id);
        redirectAttributes.addFlashAttribute("message_success","Delete Employee SuccessFully");
        return "redirect:/";
    }

    @GetMapping("/update/{id}")
    public String UpdateUser(@PathVariable int id ,Model model, RedirectAttributes redirectAttributes){
        User user = userService.getUserById(id);
        model.addAttribute("user",user);
        redirectAttributes.addFlashAttribute("name",user.getName());
        redirectAttributes.addFlashAttribute("age",user.getAge());
        redirectAttributes.addFlashAttribute("email",user.getEmail());
        redirectAttributes.addFlashAttribute("profession",user.getProfession());
        redirectAttributes.addFlashAttribute("phone",user.getPhone());
        redirectAttributes.addFlashAttribute("id",user.getId());
        redirectAttributes.addFlashAttribute("message","update");
        return "redirect:/new";
    }
    @PostMapping("/save/{id}")
    public String updateUser(@PathVariable int id,@ModelAttribute User user ,RedirectAttributes redirectAttributes){
        redirectAttributes.addFlashAttribute("message_success","Employee Updated SuccessFully");
        userService.Update(user,id);
        return "redirect:/";
    }

}
