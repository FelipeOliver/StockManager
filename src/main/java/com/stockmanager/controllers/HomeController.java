package com.stockmanager.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/")
	public ModelAndView home(){
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("content_import", "home.jsp");
		return mv;
	}

	@RequestMapping("/produto")
	public ModelAndView produto(){
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("content_import", "produto-add.jsp");
		return mv;
	}
}