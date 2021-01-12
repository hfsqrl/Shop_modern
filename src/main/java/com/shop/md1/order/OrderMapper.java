package com.shop.md1.order;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderMapper {
	
	public List<OrderVO> getOrderList(OrderVO orderVO) throws Exception;

}
