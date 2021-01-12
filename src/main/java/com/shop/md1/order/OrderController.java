package com.shop.md1.order;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shop.md1.member.MemberVO;

@Controller
@RequestMapping("/order/**")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@GetMapping("orderList")
	public ModelAndView getOrderList(OrderVO orderVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<OrderVO> ar = orderService.getOrderList(orderVO);
		
		
		mv.addObject("order", ar);
		mv.setViewName("order/orderList");
		return mv;
	}

}