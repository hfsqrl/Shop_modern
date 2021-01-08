package com.shop.md1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
	
	@Autowired
	private CartMapper cartMapper;
	
	public List<CartVO> getCartList(CartVO cartVO) throws Exception{
		
		return cartMapper.getCartList(cartVO);
	}
	
	public Integer setCartInsert(CartVO cartVO) throws Exception{
		
		return cartMapper.setCartInsert(cartVO);
	}
	
	public Integer getCartPriceSum(CartVO cartVO) throws Exception{
		
		return cartMapper.getCartPriceSum(cartVO);
	}
	
	public int setDeleteAllCart(CartVO cartVO) throws Exception{
		
		return cartMapper.setDeleteAllCart(cartVO);
	}
	
	public int setDeleteOneCart(CartVO cartVO) throws Exception{
		
		return cartMapper.setDeleteOneCart(cartVO);
	}

}
