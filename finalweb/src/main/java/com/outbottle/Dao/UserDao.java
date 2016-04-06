/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.Dao;

import java.sql.SQLException;
import jdk.nashorn.internal.objects.annotations.Getter;

/**
 *
 * @author tommyacton
 */
public interface UserDao {
    
    // Checking if the user is Valid 
    public boolean isValidUser(String userName, String password) throws SQLException;
    
}
