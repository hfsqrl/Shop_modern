package com.shop.md1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	private ProductMapper productMapper;
	
	public List<ProductVO> getProductList(ProductVO productVO) throws Exception{
		
		return productMapper.getProductList(productVO);
	}

}
