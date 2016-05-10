package com.outbottle.service;


import com.outbottle.model.Product;
import java.util.List;

/**
 *
 * @author Narbu
 */

//Service for Managing Tickets
public interface ProductService {
    
    public List<Product> getAllProducts();
    public Product getProduct(int pid);
    
}
