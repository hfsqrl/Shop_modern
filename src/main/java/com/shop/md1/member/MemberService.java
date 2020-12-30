package com.shop.md1.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.md1.member.memberuser.MemberUserVO;

public interface MemberService {
	
	public List<MemberVO> getMemberList(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception;
	
	public Integer setMemberJoin(MemberVO memberVO) throws Exception;
	
	public Integer setMemberUpdate(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberSearchId(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberSearchPw(MemberVO memberVO) throws Exception;
	
	public int setMemberPw(MemberVO memberVO) throws Exception;
	
	public Integer setMemberDelete(MemberVO memberVO) throws Exception;
	
}
