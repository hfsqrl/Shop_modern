package com.shop.md1.member;

import java.util.List;

public interface MemberService {
	
	public List<MemberVO> getMemberList(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception;
	
	public Integer setMemberJoin(MemberVO memberVO) throws Exception;
	
	public Integer setMemberUpdate(MemberVO memberVO) throws Exception;
	
}
