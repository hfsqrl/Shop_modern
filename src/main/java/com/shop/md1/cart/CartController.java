package com.shop.md1.cart;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shop.md1.member.MemberVO;

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
	public ModelAndView setCartInsert(CartVO cartVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Integer result = cartService.setCartInsert(cartVO);
			
		MemberVO memberVO = new MemberVO();
		memberVO = (MemberVO)session.getAttribute("member");
		String id = memberVO.getMember_id();
		
		mv.setViewName("redirect:./cartList?member_id="+id);
		return mv;
	}
	
	@GetMapping("setDeleteAllCart")
	public ModelAndView setDeleteAllCart(CartVO cartVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setDeleteAllCart(cartVO);
		
		MemberVO memberVO = new MemberVO();
		memberVO = (MemberVO)session.getAttribute("member");
		String id = memberVO.getMember_id();
		
		mv.setViewName("redirect:./cartList?member_id="+id);
		return mv;
	}
	
	@GetMapping("setDeleteOneCart")
	public ModelAndView setDeleteOneCart(CartVO cartVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int ressult = cartService.setDeleteOneCart(cartVO);
		
		MemberVO memberVO = new MemberVO();
		memberVO = (MemberVO)session.getAttribute("member");
		String id = memberVO.getMember_id();
		
		mv.setViewName("redirect:./cartList?member_id="+id);
		return mv;
		
	}

}
