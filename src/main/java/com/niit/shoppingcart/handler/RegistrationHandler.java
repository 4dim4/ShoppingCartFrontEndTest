package com.niit.shoppingcart.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import org.springframework.webflow.execution.RequestContext;

import com.niit.shoppingcart.model.User;

@Component
public class RegistrationHandler {

	public User getInstance(){
		return new User();
	}
	
	public String validateDetails(User user,MessageContext messageContext) {
		String status="success";
		
		if(user.getId().isEmpty()) {
			 messageContext.addMessage(new MessageBuilder().error().source("id").defaultText("UserId cannot be empty").build());
			 status="failure";
		}
		if(user.getName().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("name").defaultText("Name cannot be empty").build());
			status="failure";
		}
		if(user.getPassword().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("Password cannot be empty").build());
			status="failure";
		}
		if(user.getMobile().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("mobile").defaultText("Mobile Number cannot be empty").build());
			status="failure";
		}
	
		if(user.getMail().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("mail").defaultText("MailId cannot be empty").build());
			status="failure";
		}
		if(user.getAddress().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("address").defaultText("Address cannot be empty").build());
			status="failure";
		}
		
		
		
		return status;
	}
	
	public void addUser(RequestContext context, User user){
	    HttpSession session = ((HttpServletRequest)context.getExternalContext().getNativeRequest()).getSession();
	              session.setAttribute("user",user);
	       }
}
