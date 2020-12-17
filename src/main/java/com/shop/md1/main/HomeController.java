package com.shop.md1.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public ModelAndView home() throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("test index page");
		mv.setViewName("index");
		return mv;
	}

}
