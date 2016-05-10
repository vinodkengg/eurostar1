package com.outbottle.controllers;


import com.outbottle.model.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.outbottle.service.ProductService;

/**
 *
 * @author Group 4
 */

//Controller for Cart to purchase tickets
@Controller
@SessionAttributes("cart")
@RequestMapping("/tickets")
public class ProductController {
    
    @Autowired
    ProductService productService;
    //Request Mapping to return the basket
    @RequestMapping("/index2")
    public String viewProducts(ModelMap model, @ModelAttribute Cart cart) {
        model.addAttribute("products", productService.getAllProducts());
        return "index2";
    }
    
    @ModelAttribute("cart")
    public Cart populateCart() {
        return new Cart();
    }
}
