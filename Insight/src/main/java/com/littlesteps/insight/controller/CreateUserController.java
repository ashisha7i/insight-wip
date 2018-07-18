package com.littlesteps.insight.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/create")
public class CreateUserController {
	
	@RequestMapping(value = "/user", method = RequestMethod.GET)
    public String createUser(Model model) {
    	return "createUser";
    }
}
