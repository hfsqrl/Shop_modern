package com.shop.md1.interceptor;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.shop.md1.member.MemberVO;

@Component
public class NoticeAdminInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		

		HttpSession session = request.getSession();
		
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		boolean check = false;
		
		if(memberVO != null && memberVO.getMember_id().equals("admin")) {
	 		check = true;
	 		
			
		}else {
				request.setAttribute("msg", "관리자 권한이 필요한 서비스 입니다.");
		 		request.setAttribute("path", "../member/memberLogin");
		 		
		 		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
		 		view.forward(request, response);		
		}
					
		
		return check;
	}
	

}
