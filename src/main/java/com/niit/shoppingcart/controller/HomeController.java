package com.niit.shoppingcart.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

@Controller
public class HomeController {
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String onLoad(@ModelAttribute("user") User user,Map<String, Object> model)
	{
		  return "home";
	 
	
		
	}
	@RequestMapping(value = "here/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute User user) {
	    userDAO.saveOrUpdate(user);
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("successMessage", "You are successfully register");

		return mv;
	}
}
