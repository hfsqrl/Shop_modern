package com.shop.md1.order;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shop.md1.cart.CartVO;
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
		
	@GetMapping("payment")
	public ModelAndView getPayment(OrderVO orderVO, CartVO cartVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		orderVO = orderService.getCartItem(orderVO);
		
		cartVO = orderService.getItemNum(cartVO);
		
		mv.addObject("ci", orderVO);
		mv.addObject("in", cartVO);
		mv.setViewName("order/payment");
		return mv;
	}
	
	@PostMapping("payment")
	public ModelAndView getPayment2(OrderVO orderVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Integer result = orderService.setOrder(orderVO);
		
		MemberVO memberVO = new MemberVO();
		memberVO = (MemberVO)session.getAttribute("member");
		String id = memberVO.getMember_id();
		
		mv.setViewName("redirect:./orderList?member_id="+id);
		return mv;
		
	}

}
