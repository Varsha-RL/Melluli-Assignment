package com.melluli.challenge.springapp.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.melluli.challenge.springapp.model.User;
import com.melluli.challenge.springapp.service.UserService;

@Controller
public class UserController {

    private UserService userService;

    @RequestMapping(value = "/users")
    public String load(Model model) {
    	List<User> userList = getUserService().fetchUsers();
    	
        model.addAttribute("users", userList);
        return "users.jsp";
    }
    
    @RequestMapping(value = "/viewUserDetails" , method=RequestMethod.GET)
    public String viewUser(@RequestParam("userId") int userId, Model model) {
    	User userObj = getUserService().getUserbyId(userId);
        model.addAttribute("user", userObj);
        return "viewUserDetails.jsp";
    }
    
    public UserService getUserService() {
        return userService;
    }

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
