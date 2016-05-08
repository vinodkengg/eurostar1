package com.outbottle.dao;


import com.outbottle.bean.User;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Bogdan Vrusias
 */
@Repository
public class UserDAO {

    List<User> users = new ArrayList<User>();

    public UserDAO() {
        
        
        User user1 = new User();
        user1.setDj_Genre("Hip Hop");
        user1.setId(1);
        
        
        List<String> hobbies = new ArrayList();
        hobbies.add("Dj Fleek");
        hobbies.add("Dj Star");
        hobbies.add("Dj Khallad");
        hobbies.add("Dj Nabs");
        user1.setDj_List(hobbies);
        users.add(user1);

        User user2 = new User();
        user2.setDj_Genre("R&B");
        user2.setId(2);
        
        
        List<String> hobbies2 = new ArrayList();
        hobbies2.add("Dj Smooth");
        hobbies2.add("Dj PopCorn");
        hobbies2.add("Dj Sinan");
        hobbies2.add("Dj N-Dabs");
        user2.setDj_List(hobbies2);
        users.add(user2);

        User user3 = new User();
        user3.setDj_Genre("Dance Hall");
        user3.setId(3);
        
        
        List<String> hobbies3 = new ArrayList();
        hobbies3.add("Dj Ras");
        hobbies3.add("Dj Bocat");
        hobbies3.add("Dj Snakey");
        hobbies3.add("Dj Bansky");
        user3.setDj_List(hobbies3);
        users.add(user3);
    }

    public User getUser(int id) {
        if (id >= 0 && id < users.size()) {
            return users.get(id);
        } else {
            return null;
        }
    }

    public List<User> getUsers() {
        return users;
    }
}
