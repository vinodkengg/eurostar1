package com.outbottle.dao;


import com.outbottle.model.Ticket;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Thomas
 */

//Data Access Object class different types of tickets
@Repository
public class TicketDAO {
    
    //Method for list of tickets
    public List<Ticket> getAllProducts() {
        List<Ticket> products = new ArrayList<Ticket>();
        
        Ticket p1 = new Ticket();
        p1.setId(1);
        p1.setDescription("Early Bird");
        p1.setPrice(5.00f);
        p1.setStock(100);
        products.add(p1);
        
        Ticket p2 = new Ticket();
        p2.setId(2);
        p2.setDescription("2nd release");
        p2.setPrice(7.00f);
        p2.setStock(200);
        products.add(p2);
        
        Ticket p3 = new Ticket();
        p3.setId(3);
        p3.setDescription("3rd release");
        p3.setPrice(8.00f);
        p3.setStock(200);
        products.add(p3);
        
        Ticket p4 = new Ticket();
        p4.setId(4);
        p4.setDescription("Standard");
        p4.setPrice(10.00f);
        p4.setStock(500);
        products.add(p4);
        
        return products;
    }
}
