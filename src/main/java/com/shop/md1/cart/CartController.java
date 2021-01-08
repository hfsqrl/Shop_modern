package com.shop.md1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cart/**")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@GetMapping("cartList")
	public ModelAndView cartList(CartVO cartVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<CartVO> ar = cartService.getCartList(cartVO);
		
		Integer result = cartService.getCartPriceSum(cartVO);
		
		mv.addObject("sum", result);
		mv.addObject("cart", ar);
		mv.setViewName("cart/cartList");
		
		return mv;
		
	}
	
	@PostMapping("setCartInsert")
	public ModelAndView setCartInsert(CartVO cartVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Integer result = cartService.setCartInsert(cartVO);
		

		mv.setViewName("redirect:./cartList");
		return mv;
	}
	
	@GetMapping("setDeleteAllCart")
	public ModelAndView setDeleteAllCart(CartVO cartVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setDeleteAllCart(cartVO);
		
		mv.setViewName("redirect:./cartList");
		return mv;
	}

}
