package com.shop.md1.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductMapper {
	
	public List<ProductVO> getProductList(ProductVO productVO) throws Exception;

}
