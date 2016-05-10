package com.outbottle.model;

/**
 *
 * @author Narbu
 */
public class BasketItem {
    private Ticket product;
    private int quantity;



    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    /**
     * @return the product
     */
    public Ticket getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(Ticket product) {
        this.product = product;
    }

}
