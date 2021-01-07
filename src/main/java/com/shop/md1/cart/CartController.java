package com.shop.md1.cart;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cart/**")
public class CartController {
	
	@GetMapping("cartList")
	public ModelAndView cartList() {
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
		
	}

}
