package com.shop.md1.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberService {
	
	public List<MemberVO> getMemberList(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception;
	
	public Integer setMemberJoin(MemberVO memberVO) throws Exception;
	
	public Integer setMemberUpdate(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberSearchId(MemberVO memberVO) throws Exception;
	

}
