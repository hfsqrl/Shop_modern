package com.shop.md1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	private ProductMapper productMapper;
	
	public List<ProductVO> getOuterctList(ProductVO productVO) throws Exception{
		
		return productMapper.getOuterList(productVO);
	}
	
	public List<ProductVO> getTopList(ProductVO productVO) throws Exception{
		
		return productMapper.getTopList(productVO);
	}
	
	public List<ProductVO> getShirtsList(ProductVO productVO) throws Exception{
		
		return productMapper.getShirtsList(productVO);
	}
	
	public List<ProductVO> getPantsList(ProductVO productVO) throws Exception{
		
		return productMapper.getPantsList(productVO);
	}
	
	public List<ProductVO> getSuitList(ProductVO productVO) throws Exception{
		
		return productMapper.getSuitList(productVO);
	}
	
	public List<ProductVO> getAccList(ProductVO productVO) throws Exception{
		
		return productMapper.getAccList(productVO);
	}
	
	

}
