package com.shop.md1.member.memberuser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/**")
public class MemberUserController {
	
	//@Autowired
	private MemberUserService memberUserService;
	
	

}
