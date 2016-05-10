/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.bean;

import jdk.nashorn.internal.objects.annotations.Getter;
import jdk.nashorn.internal.objects.annotations.Setter;

/**
 *
 * @author group4 
 */
public class Name {
    
    //This is the class for the Guest list
    
    //String vaue for the objects entered into the the text box 
    private String value;

    //Get the value 
    @Getter
    public String getValue() {
        return value;
    }

    //Set the Value
    @Setter
    public void setValue(String value) {
        System.out.println("Setting value to "+value);
        this.value = value;
    }
    
}

