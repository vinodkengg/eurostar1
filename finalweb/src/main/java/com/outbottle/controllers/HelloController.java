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
@Controller
public class HelloController {

    @Autowired
    private HelloService helloService;
   /*
    public ArrayList<ModelAndView> mvtotal;

    public ArrayList<ModelAndView> getMV() {
        return mvtotal;
    }*/
    private Object name2;

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
    
    @RequestMapping( value = "/helloView.htm", method = RequestMethod.POST )
    protected ModelAndView onSubmit(@ModelAttribute() Name name) throws Exception {
        System.out.println("We got the folowing name: " + name.getValue());
       
        ModelAndView mv = new ModelAndView("helloView");
        mv.addObject("helloMessage",helloService.sayHello(name.getValue()));
       
//        ModelAndView mv1 = new ModelAndView("helloView");
//        mv1.addObject("guestListMessage1",helloService.guestListName1(name2.getValue()));
        return mv;
    }
    
}
