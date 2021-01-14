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
		
		// 적용할 Interceptor 등록
		//registry.addInterceptor(customInterceptor)
		// Interceptor에서 사용할 URL 작성
		//.addPathPatterns("/notice/**")
		//.addPathPatterns(patterns)
		//Interceptor에서 제외할 URL 작성
		//.excludePathPatterns("/notice/noticeWrite");
		
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
