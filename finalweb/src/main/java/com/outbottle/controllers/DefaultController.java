/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class DefaultController {
    
   @RequestMapping(value = "/", method = RequestMethod.GET)
  
   public String index(ModelMap map) {
       map.put("msg", "Hello this is coming from the Default Controller !");
       return "index";
   }
   
   @RequestMapping(value = "/events", method = RequestMethod.GET)
   public String events(ModelMap map) {
       map.put("msg", "This is the second page here !");
       return "events";
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
}
