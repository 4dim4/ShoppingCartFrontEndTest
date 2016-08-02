package com.niit.shoppingcart.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.util.Util;

@Controller
public class CategoryController {
	
    Logger log = LoggerFactory.getLogger(CategoryController.class);
	@Autowired
	Category category;
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String listCategories(Model model) {
		log.debug("Start: method listCategories");
		model.addAttribute("isAdminClickedCategories", "true");
		model.addAttribute("category", category);
		model.addAttribute("categoryList", this.categoryDAO.list());
		log.debug("End: method listCategories");
		return "home";
	}

	@RequestMapping(value = "category/add", method = RequestMethod.POST)
	public String addCategories(@ModelAttribute("category") Category category) {
		log.debug("Start: method addCategories");
		String newID = Util.removeComma(category.getId());
		category.setId(newID);
		categoryDAO.saveOrUpdate(category);
		
		log.debug("End: method addCategories");

		return "redirect:/categories";
	}
//	
//	@RequestMapping(value = "category/add", method = RequestMethod.POST)
//	public ModelAndView addCategories() {
//		ModelAndView mv = new ModelAndView("home");
//		mv.addObject("category", category);
//		mv.addObject("isAdminClickedCategories", "true");
//		mv.addObject("categoryList", categoryDAO.list());
//		mv.setView(view);
//		
//	}
	
	@RequestMapping(value = "category/remove/{id}")
	public String deleteCategories(@PathVariable("id") String id,ModelMap model) {
		log.debug("Start: method deleteCategories");
		log.info("Category id going to be deleted : " +id);
		try {
			categoryDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		
		log.debug("End: method deleteCategories");
		return "redirect:/categories";
	}
	
	
	@RequestMapping(value = "category/edit/{id}")
	public String editCategories(@PathVariable("id") String id,ModelMap model) {
		log.debug("Start: method editCategories");
		log.info("Category id going to be edited : " +id);
		category=categoryDAO.get(id);
		model.addAttribute("category", category);
		model.addAttribute("categoryList", categoryDAO.list());
		log.debug("End: method editCategories");

		return "redirect:/categories";
	}

}
