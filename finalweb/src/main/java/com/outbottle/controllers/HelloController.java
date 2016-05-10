package com.outbottle.controllers;


import com.outbottle.bean.Name;
import com.outbottle.service.HelloService;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Sinan 
 */

//Controller for adding people onto the Guestlist
@Controller
public class HelloController {

    @Autowired
    private HelloService helloService;
    private Object name2;

    //Returns the form section of adding people on to the Guestlist
    @RequestMapping( value = "/helloView.htm", method = RequestMethod.GET )
    protected String onView(ModelMap model) throws Exception {
        Name name = new Name();
        model.addAttribute(name);
        return "nameView";
    }
    
    @RequestMapping( value = "/nameView.htm", method = RequestMethod.GET )
    public String nameView(ModelMap map) {
        return "helloView";
    }
    //Reterns the page displaying the guestlist
    @RequestMapping( value = "/helloView.htm", method = RequestMethod.POST )
    protected ModelAndView onSubmit(@ModelAttribute() Name name) throws Exception {
        System.out.println("We got the folowing name: " + name.getValue());
       
        ModelAndView model_and_View_Object = new ModelAndView("helloView");
        model_and_View_Object.addObject("helloMessage",helloService.sayHello(name.getValue()));
      
        return model_and_View_Object;
    }
    
}
