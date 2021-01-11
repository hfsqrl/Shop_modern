package com.shop.md1.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/order/**")
public class OrderController {
	
	@GetMapping("orderList")
	public ModelAndView getOrderList() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("order/orderList");
		return mv;
	}

}
