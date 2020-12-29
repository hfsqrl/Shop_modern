package com.shop.md1.member.memberuser;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shop.md1.member.MemberVO;

@Controller
@RequestMapping("/member/**")
public class MemberUserController {
	
	@Autowired
	private MemberUserService memberUserService;
	
	@GetMapping("memberList")
	public ModelAndView getMemberList(MemberVO memberVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<MemberVO> ar = memberUserService.getMemberList(memberVO);
		mv.addObject("lists", ar);
		mv.setViewName("member/memberList");
		
		return mv;
	}
	
	@GetMapping("memberLogin")
	public ModelAndView getMemberLogin() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("member/memberLogin");
		return mv;
		
	}
	
	@PostMapping("memberLogin")
	public ModelAndView getMemberLogin(MemberVO memberVO, HttpSession session, HttpServletResponse response ,String remember) throws Exception{
		ModelAndView mv = new ModelAndView();
		
	
		
		if(remember != null) {
			Cookie cookie = new Cookie("remember", memberVO.getMember_id());
			response.addCookie(cookie);
		}else {
			Cookie cookie = new Cookie("remember", "");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		memberVO = memberUserService.getMemberLogin(memberVO);
		
		if(memberVO != null) {
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:../");
			
		}else {
			String message = "로그인에 실패하였습니다. 아이디 및 비밀번호를 확인해주세요";
			mv.addObject("msg", message);
			mv.addObject("path", "./memberLogin");
			mv.setViewName("common/result");
		}
		
		return mv;
		
	}
	
	@GetMapping("memberLogout")
	public ModelAndView getMemberLogout(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		
		mv.setViewName("redirect:../");
		
		return mv;
	}
	
	@GetMapping("memberJoin")
	public ModelAndView getMemberJoin(MemberVO memberVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		return mv;
		
	}
	
	@PostMapping("memberJoin")
	public ModelAndView getMemberJoin(@Valid MemberVO memberVO, BindingResult bindingResult) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		if(memberUserService.getMemberError(memberVO, bindingResult)) {
			mv.setViewName("member/memberJoin");
			return mv;
		}
	
		Integer result = memberUserService.setMemberJoin(memberVO);
		String message = "회원가입이 완료되었습니다.";
		
		mv.setViewName("redirect:../");
		
		return mv;
		
	}
	
	@GetMapping("jusoPopup")
	public ModelAndView jusoPopup() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("member/jusoPopup");
		return mv;
		
	}
	
	@PostMapping("jusoPopup")
	public ModelAndView goJusoPopup() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("member/jusoPopup");
		return mv;
	}
	
	@GetMapping("memberPage")
	public ModelAndView getMemberPage() throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("Member Page");
		
		return mv;
	}
	
	@GetMapping("memberUpdate")
	public ModelAndView setMemberUpdate(MemberVO memberVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
	
	@PostMapping("memberUpdate")
	public ModelAndView setMemberUpdate(@Valid MemberVO memberVO, BindingResult bindingResult) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		if(memberUserService.getMemberUpdateError(memberVO, bindingResult)) {
			mv.setViewName("member/memberUpdate");
			return mv;
			
		}
		
		Integer result = memberUserService.setMemberUpdate(memberVO);
		mv.setViewName("redirect:../");
		return mv;
	}
	

}
