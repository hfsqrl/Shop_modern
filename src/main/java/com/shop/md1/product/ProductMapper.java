package com.shop.md1.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductMapper {
	
	public List<ProductVO> getOuterList(ProductVO productVO) throws Exception;
	
	public List<ProductVO> getTopList(ProductVO productVO) throws Exception;

	public List<ProductVO> getShirtsList(ProductVO productVO) throws Exception;
	
	public List<ProductVO> getPantsList(ProductVO productVO) throws Exception;
	
	public List<ProductVO> getSuitList(ProductVO productVO) throws Exception;
	
	public List<ProductVO> getAccList(ProductVO productVO) throws Exception;
}
