package com.outbottle.service;

import com.outbottle.model.Cart;
import com.outbottle.model.Product;



/**
 *
 * @author bogdan
 */
public interface CartService {
    public void addToCart(Cart cart, Product product);
    public void removeFromCart(Cart cart, Product product);
    public void decreaseCartQty(Cart cart, Product product);
    
}
