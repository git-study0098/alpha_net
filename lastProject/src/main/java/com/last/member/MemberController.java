package com.last.member;

import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
public class MemberController {
	
//	@Autowired
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping("/test")
	public String test(){

		return null;
	}
	
}
