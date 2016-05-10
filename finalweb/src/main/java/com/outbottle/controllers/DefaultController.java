/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.controllers;

import com.outbottle.model.User;
import com.outbottle.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


@Controller
@EnableWebMvc
public class DefaultController {
    
   @RequestMapping(value = {"/","/index"}, method = RequestMethod.GET)
   public String index(ModelMap map) {
       map.put("msg", "Hello this is coming from the Default Controller !");
       return "index";
   }
   
   @RequestMapping(value = "/venues", method = RequestMethod.GET)
   public String venues(ModelMap map) {
       map.put("msg", "This is the second page here !");
       return "venues";
   }
   
   @RequestMapping(value = "/contact", method = RequestMethod.GET)
   public String contact(ModelMap map) {
       map.put("msg", "This is the second page here !");
       return "contact";
   }
   
    @RequestMapping(value = "/about", method = RequestMethod.GET)
   public String about(ModelMap map) {
       map.put("msg", "This is the second page here !");
       return "about";
   }
   

   
   //Login k
   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public String login(ModelMap map) {
       map.put("msg", "This is the second page here !");
       return "login";
   }
   
    @Autowired
    private UserService userService;

    
    @RequestMapping( value = "/hello", method = RequestMethod.GET)
    protected String helloUser() throws Exception {
        System.out.println("*** in helloUser");
        return "hello";
    }
    
    @RequestMapping( value = "/user/{id}", method = RequestMethod.GET)
    protected @ResponseBody User getUser(@PathVariable("id") int id) throws Exception {
        System.out.println("*** in getUser with id=" + id);
        User user = userService.getUser(id);
        return user;
    }
    
    @RequestMapping( value = "/users", method = RequestMethod.GET)
    protected @ResponseBody List<User> getUsers() throws Exception {
        List<User> users = userService.getUsers();
        System.out.println("*** in getUsers with number of users=" + users.size());
        return users;
    }
}
