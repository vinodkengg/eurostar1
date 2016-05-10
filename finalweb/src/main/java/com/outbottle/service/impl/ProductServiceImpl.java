package com.outbottle.service.impl;


import com.outbottle.dao.ProductDao;
import com.outbottle.model.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.outbottle.service.ProductService;

/**
 *
 * @author Thomas
 */

//Service Implementation for the Product Basket
@Service
public class ProductServiceImpl implements ProductService {
    
    @Autowired
    ProductDao productDao;

    @Override
    public List<Product> getAllProducts() {
        List<Product> products = productDao.getAllProducts();
        return products;
    }

    @Override
    public Product getProduct(int pid) {
        List<Product> products = productDao.getAllProducts();
        for (Product p : products) {
            if (p.getId() == pid) {
                return p;
            }
        }
        return null;
    }
    
}
