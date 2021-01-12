package com.shop.md1.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shop.md1.product.ProductVO;

@Controller
@RequestMapping("/order/**")
public class OrderController {
	
	@GetMapping("payment")
	public ModelAndView setPayment() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("order/payment");
		
		return mv;
	}

}
