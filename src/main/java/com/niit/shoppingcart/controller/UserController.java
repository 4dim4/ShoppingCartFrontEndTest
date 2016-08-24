package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.User;

@Controller
public class UserController {
	
	Logger log = LoggerFactory.getLogger(UserController.class);
	
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
	
	@Autowired
	Cart cart;
	
	@Autowired
	CartDAO cartDAO;

	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value = "name") String userID,
			@RequestParam(value = "password") String password, HttpSession session) {
		log.debug("Start: method login");
		 log.info("userID is {} password is {}", userID, password);

		ModelAndView mv = new ModelAndView("home");
		boolean isValidCredentials = userDAO.isValidCredentials(userID, password);

		if (isValidCredentials == true) {
			
			user = userDAO.get(userID);
			session.setAttribute("loggedInUser", user.getName());
			session.setAttribute("user", user);
			System.out.println(user.getName() + " logged in !");
			if (user.getAdmin() == 1) {
				mv.addObject("isAdmin", "true");

			} else {
				mv.addObject("isAdmin", "false");
				cart = cartDAO.getByUserId(userID);
				mv.addObject("cart", cart);
//				List<Cart> cartList = cartDAO.userCartList(userID);
//				session.setAttribute("cartList", cartDAO.userCartList(userID));
				
			
				session.setAttribute("cartSize", cartDAO.userCartList(userID).size());
			}

		} else {
			
		
			System.out.println("Log in failed !");
			mv.addObject("user", user);
		
			mv.addObject("userClickedLoginHere", "true");

			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid Credentials");
		

		}
		mv.addObject("userClickedHome", "true");
		log.debug("End: method login");
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		log.debug("Start: method logout");
		ModelAndView mv = new ModelAndView("redirect:/");
		session.invalidate();
		session = request.getSession(true);
//		session.setAttribute("category", category);
//		session.setAttribute("categoryList", categoryDAO.list());
	
		mv.addObject("logoutMessage", "You successfully logged out");
		mv.addObject("loggedOut", "true");
		
		log.debug("End: method logout");
		return mv;
	}
}