package com.shop.md1.order;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.md1.cart.CartVO;

@Mapper
public interface OrderMapper {
	
	public List<OrderVO> getOrderList(OrderVO orderVO) throws Exception;

	public OrderVO getCartItem(OrderVO orderVO) throws Exception;
	
	public Integer setOrder(OrderVO orderVO) throws Exception;
	
	public CartVO getItemNum(CartVO cartVO) throws Exception;

}
