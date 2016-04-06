/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.model;
import com.outbottle.services.UserService;
import java.sql.SQLException;
/**
 *
 * @author tommyacton
 */
public class LoginClass {
    
    private UserService userService;
    
    
    //Setter 
    public void setUserService(UserService userService){
        this.userService = userService;
    }
    
    
    //Getter 
    public UserService getUserService(){
        return this.userService;
    
//    public bloolean isValid(String userName,){
//        
//    }
    }
}
