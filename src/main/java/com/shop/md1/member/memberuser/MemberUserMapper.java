package com.shop.md1.member.memberuser;

import org.apache.ibatis.annotations.Mapper;

import com.shop.md1.member.MemberMapper;
import com.shop.md1.member.MemberVO;

@Mapper
public interface MemberUserMapper extends MemberMapper{

	public MemberVO getMemberId(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberPhone(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberEmail(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberAddress(MemberVO memberVO) throws Exception;
	

}
