/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.services.impl;

import com.outbottle.Dao.UserDao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.sql.DataSource;
import java.sql.SQLException;


/**
 *
 * @author tommyacton
 */
public class UserDaoImpl implements UserDao{
    DataSource dataSource;
    
     //Setter
    
    //Setting the dataSource
    public void setDataSource(DataSource dataSource){
        this.dataSource = dataSource;
    }
    
    //getters 
    
    //Return the dataSource
    public DataSource getDataSource(){
        return this.dataSource;
    }
    
    
   
    @Override
    public boolean isValidUser(String userName, String password) throws SQLException {
        String query = "Select count (1) from user where username = ? and password = ?";
        
       
        PreparedStatement pstmt = dataSource.getConnection().prepareCall(query);
        pstmt.setString(1, userName);
        pstmt.setString(2, password);
        ResultSet resultSet = pstmt.executeQuery();
        
        if(resultSet.next())
            return(resultSet.getInt(1) >0);
        else 
            return false;
    }
    
}
