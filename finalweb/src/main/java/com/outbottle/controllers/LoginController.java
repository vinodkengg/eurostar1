/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.controllers;

import com.outbottle.model.LoginModel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
    
@Controller
@RequestMapping("login.htm")
public class LoginController {
 
    @RequestMapping(method = RequestMethod.GET)
    public String init(ModelMap modelMap) {
        modelMap.put("info", "Hello User");
        return "login";
    }
 
    @RequestMapping(method = RequestMethod.POST)
    public String submit(ModelMap modelMap, @ModelAttribute("loginModel") LoginModel loginModel) {
        String password = loginModel.getPassword();
        String username = loginModel.getUsername();
        if ((username != null && username.equals("group4")) && (password != null && password.equals("hello")) ) {
            modelMap.put("userInformation", "Login Sucessful");
            return "events";
        } else {
            modelMap.put("errorMessage", "Please enter the correct username/password");
            return null;
        }
 
    }
}
