package com.outbottle.controllers;


import com.outbottle.model.Cart;
import com.outbottle.model.Product;
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
 * @author bogdan
 */
@Controller
@SessionAttributes("cart")
@RequestMapping("/cart")
public class CartController {

    @Autowired
    CartService cartService;
    
    @Autowired
    ProductService productService;

    @RequestMapping("/view")
    public String viewCart(ModelMap model, @ModelAttribute Cart cart) {
        return "viewcart";
    }
    
    @RequestMapping("/add")
    public String addToCart(ModelMap model, @ModelAttribute Cart cart, @RequestParam("pid") int pid) {
        Product product = productService.getProduct(pid);
        cartService.addToCart(cart, product);
        return "redirect:/tickets/index2";
    }
    
    @RequestMapping("/remove")
    public String removeFromCart(ModelMap model, @ModelAttribute Cart cart, @RequestParam("pid") int pid) {
        Product product = productService.getProduct(pid);
        cartService.removeFromCart(cart, product);
        return "redirect:view";
    }
    
    @RequestMapping("/increase")
    public String increaseCart(ModelMap model, @ModelAttribute Cart cart, @RequestParam("pid") int pid) {
        Product product = productService.getProduct(pid);
        cartService.addToCart(cart, product);
        return "redirect:view";
    }
    
    @RequestMapping("/decrease")
    public String decreaseCart(ModelMap model, @ModelAttribute Cart cart, @RequestParam("pid") int pid) {
        Product product = productService.getProduct(pid);
        cartService.decreaseCartQty(cart, product);
        return "redirect:view";
    }

    @ModelAttribute("cart")
    public Cart populateCart() {
        return new Cart();
    }
}
