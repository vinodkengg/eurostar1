package com.outbottle.service;

import com.outbottle.model.Cart;
import com.outbottle.model.Product;



/**
 *
 * @author Thomas
 */
//Service for basket in order the functions like add to cart, remove from cart and decrease quantity to work
public interface CartService {
    public void addToCart(Cart cart, Product product);
    public void removeFromCart(Cart cart, Product product);
    public void decreaseCartQty(Cart cart, Product product);
    
}
