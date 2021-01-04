package com.shop.md1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product/**")
public class ProductController {
	
	@Autowired
	private ProductService productservice;

	@GetMapping("outerList")
	public ModelAndView productList(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = productservice.getProductList(productVO);
		mv.addObject("list", ar);
		mv.addObject("product", "Outer");
		
		mv.setViewName("product/productList");
		return mv;
	}


}
