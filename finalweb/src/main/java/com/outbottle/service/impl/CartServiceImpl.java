package com.outbottle.service.impl;


import com.outbottle.model.Cart;
import com.outbottle.model.CartItem;
import com.outbottle.model.Product;
import com.outbottle.service.CartService;
import org.springframework.stereotype.Service;

/**
 *
 * @author Bogdan Vrusias
 */
@Service
public class CartServiceImpl implements CartService {
    
    /**
     *
     * @param cart
     * @param product
     */
    @Override
    public void addToCart(Cart cart, Product product) {
        CartItem cartItem = getCartItem(cart, product.getId());
        if (cartItem != null && product.getStock() <= cartItem.getQuantity()) {
            return;
        }
        if(cartItem == null) {
            cartItem = new CartItem();
            cartItem.setProduct(product);
            cartItem.setQuantity(1);
            cart.getItems().add(cartItem);
        } else {
            increaseCartItemQty(cartItem);
        }
        updateCartTotal(cart);
    }
    
    public CartItem getCartItem(Cart cart, int pid) {
        for (CartItem item : cart.getItems()) {
            if (item.getProduct().getId() == pid) {
                return item;
            }
        }
        return null;
    }
    
    public CartItem increaseCartItemQty(CartItem cartItem) {
        cartItem.setQuantity(cartItem.getQuantity()+1);
        return cartItem;
    }
    
    public CartItem decreaseCartItemQty(CartItem cartItem) {
        cartItem.setQuantity(cartItem.getQuantity()-1);
        return cartItem;
    }
    
    /**
     *
     * @param cart
     * @param product
     */
    @Override
    public void removeFromCart(Cart cart, Product product) {
        CartItem cartItem = getCartItem(cart, product.getId());
        if(cartItem == null) {
            return;
        } else {
            cart.getItems().remove(cartItem);
        }
        updateCartTotal(cart);
    }
    
    public void updateCartTotal(Cart cart) {
        float total = 0.0f;
        for (CartItem item : cart.getItems()) {
            total += item.getProduct().getPrice()*(float)item.getQuantity();
        }
        cart.setTotal(total);
    }

    @Override
    public void decreaseCartQty(Cart cart, Product product) {
        CartItem cartItem = getCartItem(cart, product.getId());
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
