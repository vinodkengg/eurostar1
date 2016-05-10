package com.outbottle.controllers;


import com.outbottle.model.Basket;
import com.outbottle.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.outbottle.service.BasketService;
import com.outbottle.service.TciketService;

/**
 *
 * @author Group 4
 */

/***
 * 
 * @author Controller for Adding tickets to the Basket
 */
@Controller
@SessionAttributes("cart")
@RequestMapping("/cart")
public class CartController {

    @Autowired
    BasketService cartService;
    
    @Autowired
    TciketService productService;

    //Mapping in order to view the basket
    @RequestMapping("/view")
    public String viewCart(ModelMap model, @ModelAttribute Basket cart) {
        return "viewcart";
    }
    
    //Mapping in order to add tickets to the basket
    @RequestMapping("/add")
    public String addToCart(ModelMap model, @ModelAttribute Basket cart, @RequestParam("pid") int pid) {
        Ticket product = productService.getProduct(pid);
        cartService.addToCart(cart, product);
        return "redirect:/tickets/index2";
    }
    
    //Removing tickets from the basket
    @RequestMapping("/remove")
    public String removeFromCart(ModelMap model, @ModelAttribute Basket cart, @RequestParam("pid") int pid) {
        Ticket product = productService.getProduct(pid);
        cartService.removeFromCart(cart, product);
        return "redirect:view";
    }
    
    //Increase the number of tickets within the basket
    @RequestMapping("/increase")
    public String increaseCart(ModelMap model, @ModelAttribute Basket cart, @RequestParam("pid") int pid) {
        Ticket product = productService.getProduct(pid);
        cartService.addToCart(cart, product);
        return "redirect:view";
    }
    
    //Decrease the number of tickets within the basket
    @RequestMapping("/decrease")
    public String decreaseCart(ModelMap model, @ModelAttribute Basket cart, @RequestParam("pid") int pid) {
        Ticket product = productService.getProduct(pid);
        cartService.decreaseCartQty(cart, product);
        return "redirect:view";
    }
    
    //Mapping to view the cart
    @ModelAttribute("cart")
    public Basket populateCart() {
        return new Basket();
    }
}
