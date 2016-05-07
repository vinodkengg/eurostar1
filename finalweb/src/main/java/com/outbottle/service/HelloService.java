
package com.outbottle.service;

import org.springframework.stereotype.Service;

/**
 *
 * @author Bogdan Vrusias
 */
@Service
public class HelloService {

    //UserName 
    public String sayHello(String name) {
        return "Hello " + name + "!";
    }
    
    //Number Of Guest List
    public String guestList1(String guestListName1) {
        return "Hello " + guestListName1;
    }
    
    
}
