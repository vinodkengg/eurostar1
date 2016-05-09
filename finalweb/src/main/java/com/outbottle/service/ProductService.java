package com.outbottle.service;


import com.outbottle.model.Product;
import java.util.List;

/**
 *
 * @author bogdan
 */
public interface ProductService {
    
    public List<Product> getAllProducts();
    public Product getProduct(int pid);
    
}
