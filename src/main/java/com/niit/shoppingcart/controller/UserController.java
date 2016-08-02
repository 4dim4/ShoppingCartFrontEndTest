package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

@Controller
public class UserController {
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;

	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value = "name") String userID,
			@RequestParam(value = "password") String password, HttpSession session) {
		// log.debug("Starting of the method login");
		// log.info("userID is {} password is {}", userID, password);

		ModelAndView mv = new ModelAndView("login");
		boolean isValidCredentials = userDAO.isValidCredentials(userID, password);

		if (isValidCredentials == true) {
			
			user = userDAO.get(userID);
			session.setAttribute("loggedInUser", user.getName());
			System.out.println(user.getName() + " logged in !");
			if (user.getAdmin() == 1) {
				mv.addObject("isAdmin", "true");

			} else {
				mv.addObject("isAdmin", "false");
//				cart = cartDAO.get(userID);
//				mv.addObject("cart", cart);
//				List<Cart> cartList = cartDAO.list();
//				mv.addObject("cartList", cartList);
//				mv.addObject("cartSize", cartList.size());
			}

		} else {
			System.out.println("Log in failed !");

			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid Credentials");

		}
		//log.debug("Ending of the method login");
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("logout");
		session.invalidate();
		session = request.getSession(true);
//		session.setAttribute("category", category);
//		session.setAttribute("categoryList", categoryDAO.list());
	
		mv.addObject("logoutMessage", "You successfully logged out");
		mv.addObject("loggedOut", "true");
	
		return mv;
	 }
}
