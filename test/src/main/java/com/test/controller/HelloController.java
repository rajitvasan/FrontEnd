package com.test.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.niit.dao.UserDAO;
import com.niit.model.User;


@Controller
public class HelloController 
{
	private UserDAO userdao;
	
	@RequestMapping ("/HelloPage")
	public ModelAndView helloworld(
			@RequestParam(value = "name1", required = false, defaultValue = "World") String name) 
	{
		ModelAndView model = new ModelAndView("HelloPage");
		model.addObject("message","Welcome to Spring MVC!");
		model.addObject("name1",name);
		return model;		
	}

	@RequestMapping ("/Register")
	public ModelAndView helloworld1(
			@RequestParam(value = "name1", required = false, defaultValue = "World") String name) 
	
	{
		ModelAndView model = new ModelAndView("Register");
		//model.addObject("message","This is Register Page Yet Again!");
		model.addObject(new User());
		return model;
	}
	
	@RequestMapping ("/RegisterUser")
	public String RegisterUser(@ModelAttribute("user") User user, Model model)
	{
		System.out.println(user);
		//userdao.addUser(user);
		//model.addAttribute("displayRegistrationSuccessMessage", "You have been successfully registered");
		return "index";
	}
	
}