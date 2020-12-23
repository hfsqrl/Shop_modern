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
		//Annotation 검증
		if(bindingResult.hasErrors()) {
			result = true;
		}
		
		//pw 일치 검증
		if(!memberVO.getMember_pw().equals(memberVO.getMember_pw2())) {
			bindingResult.rejectValue("member_pw2", "memberVO.member_pw.notEqual");
			result = true;
		}
		
		//id 중복 검사
		MemberVO mv = memberUserMapper.getMemberId(memberVO);
		if(mv != null) {
			bindingResult.rejectValue("member_id", "equal");
			result = true;
		}
		
		//전화번호 중복검사
		 MemberVO mv2 = memberUserMapper.getMemberPhone(memberVO);
		if(mv2 != null) {
			bindingResult.rejectValue("member_phone", "phone.equal");
			result = true;
		}
		
		//이메일 중복검사
		MemberVO mv3 = memberUserMapper.getMemberEmail(memberVO);
		if(mv3 != null) {
			bindingResult.rejectValue("member_email", "email.equal");
		}
		
		
		return result;
	}


	
}
