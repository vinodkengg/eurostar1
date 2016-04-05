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

/**
 *
 * @author john
 */
@Controller
public class DefaultController {
    
   @RequestMapping(value = "/", method = RequestMethod.GET)
  
   public String index(ModelMap map) {
       map.put("msg", "Hello this is coming from the Default Controller !");
       return "index";
   }
   
   @RequestMapping(value = "/registration", method = RequestMethod.GET)
  
   public String index2(ModelMap map) {
       map.put("msg", "This is the second page here more stuff !");
       return "registration";
   }
    
   @RequestMapping(value = "/sinan", method = RequestMethod.GET)
  
   public String sinan(ModelMap map) {
       map.put("msg", "This is the second page here !");
       return "sinan";
   }
}
