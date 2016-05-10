package com.outbottle.service.impl;


import com.outbottle.model.Basket;
import com.outbottle.model.BasketItem;
import com.outbottle.model.Ticket;
import org.springframework.stereotype.Service;
import com.outbottle.service.BasketService;

/**
 *
 * @author Narbu
 */
//Sercice Implementation for basket
@Service
public class BasketServiceImpl implements BasketService {
    
    /**
     *
     * @param cart
     * @param product
     */
    
    //Method to add to cart 
    @Override
    public void addToCart(Basket cart, Ticket product) {
        BasketItem cartItem = getCartItem(cart, product.getId());
        if (cartItem != null && product.getStock() <= cartItem.getQuantity()) {
            return;
        }
        if(cartItem == null) {
            cartItem = new BasketItem();
            cartItem.setProduct(product);
            cartItem.setQuantity(1);
            cart.getItems().add(cartItem);
        } else {
            increaseCartItemQty(cartItem);
        }
        updateCartTotal(cart);
    }
    //Method to get item from cart
    public BasketItem getCartItem(Basket cart, int pid) {
        for (BasketItem item : cart.getItems()) {
            if (item.getProduct().getId() == pid) {
                return item;
            }
        }
        return null;
    }
    //Method to increase quantity of item
    public BasketItem increaseCartItemQty(BasketItem cartItem) {
        cartItem.setQuantity(cartItem.getQuantity()+1);
        return cartItem;
    }
    //Decrease the qunatity of item
    public BasketItem decreaseCartItemQty(BasketItem cartItem) {
        cartItem.setQuantity(cartItem.getQuantity()-1);
        return cartItem;
    }
    
    /**
     *
     * @param cart
     * @param product
     */
    //Method to remove item from the cart
    @Override
    public void removeFromCart(Basket cart, Ticket product) {
        BasketItem cartItem = getCartItem(cart, product.getId());
        if(cartItem == null) {
            return;
        } else {
            cart.getItems().remove(cartItem);
        }
        updateCartTotal(cart);
    }
    //Method to update the cart
    public void updateCartTotal(Basket cart) {
        float total = 0.0f;
        for (BasketItem item : cart.getItems()) {
            total += item.getProduct().getPrice()*(float)item.getQuantity();
        }
        cart.setTotal(total);
    }

    //Decrease the quantity of the qunatity
    @Override
    public void decreaseCartQty(Basket cart, Ticket product) {
        BasketItem cartItem = getCartItem(cart, product.getId());
        if(cartItem == null){
            return;
        }else{
            decreaseCartItemQty(cartItem);
            if(cartItem.getQuantity() <= 0){
                cart.getItems().remove(cartItem);
            }
            updateCartTotal(cart);
        }
    }
}
