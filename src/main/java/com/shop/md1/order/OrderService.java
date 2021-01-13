package com.shop.md1.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {
	
	@Autowired
	private OrderMapper orderMapper;
	
	public List<OrderVO> getOrderList(OrderVO orderVO) throws Exception{
		
		return orderMapper.getOrderList(orderVO);
	}
	
	public OrderVO getCartItem(OrderVO orderVO) throws Exception{
		
		return orderMapper.getCartItem(orderVO);
	}
	
	public Integer setOrder(OrderVO orderVO) throws Exception{
		
		return orderMapper.setOrder(orderVO);
	}
}
