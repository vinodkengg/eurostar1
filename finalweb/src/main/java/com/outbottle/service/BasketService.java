package com.outbottle.service;

import com.outbottle.model.Basket;
import com.outbottle.model.Ticket;



/**
 *
 * @author Thomas
 */
//Service for basket in order the functions like add to cart, remove from cart and decrease quantity to work
public interface BasketService {
    public void addToCart(Basket cart, Ticket product);
    public void removeFromCart(Basket cart, Ticket product);
    public void decreaseCartQty(Basket cart, Ticket product);
    
}
