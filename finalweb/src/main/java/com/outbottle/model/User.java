package com.outbottle.model;

import java.util.Date;
import java.util.List;

/**
 *
 * @author Sinan Cayir
 */
public class User {
    /**
     * Fields for Dj list
     * Interger = ID, String = dj_Genre, List = dj_list
     */
    private int id;
    private String dj_Genre;
    private List<String> dj_List;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the genre name
     */
    public String getDj_Genre() {
        return dj_Genre;
    }

    /**
     * @param dj_Genre the name to set
     */
    public void setDj_Genre(String dj_Genre) {
        this.dj_Genre = dj_Genre;
    }

   

    /**
     * @return the dj_List
     */
    public List<String> getDj_List() {
        return dj_List;
    }

    /**
     * @param dj_List setter for List of dj's
     */
    public void setDj_List(List<String> dj_List) {
        this.dj_List = dj_List;
    }
    
}
