package com.outbottle.service;


import com.outbottle.model.Ticket;
import java.util.List;

/**
 *
 * @author Narbu
 */

//Service for Managing Tickets
public interface TciketService {
    
    public List<Ticket> getAllProducts();
    public Ticket getProduct(int pid);
    
}
