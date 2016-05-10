package com.outbottle.service.impl;


import com.outbottle.dao.TicketDAO;
import com.outbottle.model.Ticket;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.outbottle.service.TciketService;

/**
 *
 * @author Thomas
 */

//Service Implementation for the Ticket Basket
@Service
public class TicketServiceImpl implements TciketService {
    
    @Autowired
    TicketDAO productDao;

    @Override
    public List<Ticket> getAllProducts() {
        List<Ticket> products = productDao.getAllProducts();
        return products;
    }

    @Override
    public Ticket getProduct(int pid) {
        List<Ticket> products = productDao.getAllProducts();
        for (Ticket p : products) {
            if (p.getId() == pid) {
                return p;
            }
        }
        return null;
    }
    
}
