package com.shop.md1.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.shop.md1.interceptor.CustomInterceptor;
import com.shop.md1.interceptor.NoticeAdminInterceptor;
import com.shop.md1.interceptor.MemberInterceptor;


@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	
	@Autowired
	private CustomInterceptor customInterceptor;
	
	@Autowired
	private NoticeAdminInterceptor noticeAdminInterceptor;
	
	@Autowired
	private MemberInterceptor memberInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		
		registry.addInterceptor(noticeAdminInterceptor)
		.addPathPatterns("/notice/noticeWrite");
		
		registry.addInterceptor(memberInterceptor)
		.addPathPatterns("/review/**");
		
		registry.addInterceptor(memberInterceptor)
		.addPathPatterns("/qna/**");
		
		registry.addInterceptor(memberInterceptor)
		.addPathPatterns("/order/**");
		
		registry.addInterceptor(memberInterceptor)
		.addPathPatterns("/cart/**");
		
		registry.addInterceptor(memberInterceptor)
		.addPathPatterns("/member/memberPage")
		.addPathPatterns("/member/memberUpdate");
		
		WebMvcConfigurer.super.addInterceptors(registry);
	}

}
