package com.shop.md1.error;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error/**")
public class CustomErrorController implements ErrorController{

	private static final String ERROR_PATH = "/error";
	 
    @Override
    public String getErrorPath() {
        return ERROR_PATH;
    }
    
    @RequestMapping("error")
    public String handleError(HttpServletRequest request, Model model) {
       
  
        return "error/error";
    }
	
}
