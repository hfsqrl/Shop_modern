package com.shop.md1.member.memberuser;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.shop.md1.member.MemberService;
import com.shop.md1.member.MemberVO;

@Service
public class MemberUserService implements MemberService{
	
	@Autowired
	private MemberUserMapper memberUserMapper;

	@Override
	public List<MemberVO> getMemberList(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return memberUserMapper.getMemberList(memberVO);
	}

	@Override
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return memberUserMapper.getMemberLogin(memberVO);
	}
	
	@Override
	public Integer setMemberJoin(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return memberUserMapper.setMemberJoin(memberVO);
	}
	
	public boolean getMemberError(MemberVO memberVO, BindingResult bindingResult) throws Exception{
		
		boolean result=false;
		
		if(bindingResult.hasErrors()) {
			result = true;
		}
		
		return result;
	}

	
}
