/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.controllers;


import com.outbottle.model.Cart;
import com.outbottle.service.CartService;
import com.outbottle.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author Nabs
 */
@Controller
@SessionAttributes("cart")
@RequestMapping("/cart")
public class ConfirmationController {
    
    @Autowired
    CartService cartService;
    
    @Autowired
    ProductService productService;
    
    @RequestMapping("/confirmation")
    public String viewProducts(ModelMap model, @ModelAttribute Cart cart) {
        //model.addAttribute("products", productService.getAllProducts());
        return "confirmation";
    }
    
}
