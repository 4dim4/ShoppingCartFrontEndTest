package com.niit.shoppingcart.controller;

import java.util.Map;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.User;

@Controller
public class HomeController {

	Logger log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	UserDAO userDAO;

	@Autowired
	User user;
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private Category category;

	@RequestMapping(value = {"/","/home"})
	public ModelAndView onLoad(HttpSession session) {
		log.debug("Start: method onLoad");

		ModelAndView mv = new ModelAndView("home");
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());
		mv.addObject("isAdmin", "false");
		mv.addObject("userClickedHome", "true");
		log.debug("End: method onLoad");

		return mv;
	}

	@RequestMapping(value = "here/register", method = RequestMethod.GET)
	public ModelAndView registerUser(HttpSession session) {
		log.debug("Start: method registerUser");
		log.info("User object going to be registered has user id: " + user.getId());
		User user = (User) session.getAttribute("user");
		userDAO.saveOrUpdate(user);
		ModelAndView mv = new ModelAndView("redirect:/");
		mv.addObject("successMessage", "You are successfully register");

		log.debug("End: method registerUser");
		return mv;
	}

	@RequestMapping("/loginHere")
	public ModelAndView onClickLogin() {
		log.debug("Start: method onClickLogin");
        
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("user", user);
		mv.addObject("userClickedRegisterHere", "true");
		mv.addObject("userClickedLoginHere", "true");
		
		log.debug("End: method onClickLogin");
        return mv;
        
	}
	
	
	
}


