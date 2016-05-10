
package com.outbottle.service;

import org.springframework.stereotype.Service;

/**
 *
 * @author Thomas
 */

//Service for Guestlist
@Service
public class HelloService {

    //UserName 
    public String sayHello(String name) {
        return "Succesfully Added to Guest List !  " +  " Name: " + name + " ";
    }
   
}
