package com.shop.md1.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {

	public List<CartVO> getCartList(CartVO cartVO) throws Exception;
	
	public Integer setCartInsert(CartVO cartVO) throws Exception;
	
	public Integer getCartPriceSum(CartVO cartVO) throws Exception;
	
	public int setDeleteAllCart(CartVO cartVO) throws Exception;
}
