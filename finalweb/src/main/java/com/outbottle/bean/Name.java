/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.outbottle.bean;

/**
 *
 * @author tommyacton
 */
public class Name {
    
    
    private String value;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        System.out.println("Setting value to "+value);
        this.value = value;
    }
    
}

