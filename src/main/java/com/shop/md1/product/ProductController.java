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
	public ModelAndView getOuterList(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = productservice.getOuterctList(productVO);
		mv.addObject("list", ar);
		mv.addObject("product", "Outer");
		mv.addObject("product2", "outer");
		mv.setViewName("product/productList");
		return mv;
	}
	
	@GetMapping("topList")
	public ModelAndView getTopList(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = productservice.getTopList(productVO);
		mv.addObject("list", ar);
		mv.addObject("product", "Top");		
		mv.addObject("product2", "top");
		mv.setViewName("product/productList");
		
		
		return mv;
		
	}
	
	@GetMapping("shirtsList")
	public ModelAndView getshirtsList(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = productservice.getShirtsList(productVO);
		mv.addObject("list", ar);
		mv.addObject("product", "Shirts");		
		mv.addObject("product2", "shirts");
		mv.setViewName("product/productList");
		
		
		return mv;
		
	}
	
	@GetMapping("pantsList")
	public ModelAndView getPantsList(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = productservice.getPantsList(productVO);
		mv.addObject("list", ar);
		mv.addObject("product", "Pants");		
		mv.addObject("product2", "pants");
		mv.setViewName("product/productList");
		
		
		return mv;
		
	}
	
	@GetMapping("suitList")
	public ModelAndView getSuitList(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = productservice.getSuitList(productVO);
		mv.addObject("list", ar);
		mv.addObject("product", "Suit");		
		mv.addObject("product2", "suit");
		mv.setViewName("product/productList");
		
		
		return mv;
		
	}
	
	@GetMapping("accList")
	public ModelAndView getAccList(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = productservice.getAccList(productVO);
		mv.addObject("list", ar);
		mv.addObject("product", "Acc");		
		mv.addObject("product2", "acc");
		mv.setViewName("product/productList");
		
		
		return mv;
		
	}
	
	@GetMapping("bagShoesList")
	public ModelAndView getBagShoesList(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = productservice.getBagShoesList(productVO);
		mv.addObject("list", ar);
		mv.addObject("product", "Bag & Shoes");		
		mv.addObject("product2", "bagShoes");
		mv.setViewName("product/productList");
		
		
		return mv;
		
	}
	
	@GetMapping("getOneProduct")
	public ModelAndView getOneOuter(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		productVO = productservice.getOneOuter(productVO);
		
		mv.addObject("dto", productVO);
		mv.setViewName("product/getOneProduct");
		
		return mv;
		
	}
	
	
	


}
