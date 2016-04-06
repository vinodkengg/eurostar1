/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

//Import LoginDelegate
//Import LoginBean;

/**
 *
 * @author tommyacton
 */
public class LoginController {
    
    @Autowired
    private LoginDelegate loginDelegate;
    
    @RequestMapping(value=" /login",method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse) {
        
        ModelAndView modelAndView = new ModelAndView("login");
        LoginBean loginBean = new LoginBean();
        modelAndView.addAllObjects("loginBean", loginBean);
        request modelAndView;
    }
    @RequestMapping(value "/login", method=RequestMethod.POST)
    public ModelAndView runLogin(HttpServletRequest request, HttpServletResponse response, @ModelAttribute ("loginBean")LoginBean loginBean){
        ModelAndView model - null;
        try {
            boolean isValidUser = loginDelegate.isVal
        }
    }
    
}
