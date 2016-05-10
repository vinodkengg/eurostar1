package com.outbottle.model;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Component;

/**
 *
 * @author Narbu
 */
@Component
public class Basket {
    private List<BasketItem> items;
    private float total;
    
    public Basket() {
        items = new ArrayList<BasketItem>();
    }

    /**
     * @return the items
     */
    public List<BasketItem> getItems() {
        return items;
    }

    /**
     * @param items the items to set
     */
    public void setProducts(List<BasketItem> items) {
        this.items = items;
    }

    /**
     * @return the total
     */
    public float getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(float total) {
        this.total = total;
    }
}
