package com.outbottle.controllers;


import com.outbottle.model.Basket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.outbottle.service.TciketService;

/**
 *
 * @author Group 4
 */

//Controller for Basket to purchase tickets
@Controller
@SessionAttributes("cart")
@RequestMapping("/tickets")
public class ProductController {
    
    @Autowired
    TciketService productService;
    //Request Mapping to return the basket
    @RequestMapping("/index2")
    public String viewProducts(ModelMap model, @ModelAttribute Basket cart) {
        model.addAttribute("products", productService.getAllProducts());
        return "index2";
    }
    
    @ModelAttribute("cart")
    public Basket populateCart() {
        return new Basket();
    }
}
