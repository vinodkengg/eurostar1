/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.services;
import java.sql.SQLException;
/**
 *
 * @author tommyacton
 */
public interface UserService {
    
    // This class here is responsiable to dealing with invalid users
    public boolean isValidUser(String userName, String password) throws SQLException;
}
