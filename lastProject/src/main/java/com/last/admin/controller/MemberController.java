package com.last.admin.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.last.common.dao.MemberDAOImpl;
import com.last.common.service.MemberService;
import com.last.common.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	private MemberService MemberService;

	public void setMemberService(MemberService memberService) {
		MemberService = memberService;
	}

	@Autowired
	private MemberDAOImpl memberDAOImpl;

	
	
	public void setMemberDAOImpl(MemberDAOImpl memberDAOImpl) {
		this.memberDAOImpl = memberDAOImpl;
	}

	@RequestMapping("/sign3")
	public String insertMember(){
		
		
		
		return "member/signup";
	}
	
	@RequestMapping(value="/insert", method = RequestMethod.POST)
	public String insertMem(HttpServletRequest request){
		System.out.println("들어오긴하나요");
		MemberVo vo = new MemberVo();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pwd"));;
		vo.setName(request.getParameter("name"));
		vo.setMem_enName(request.getParameter("mem_enName"));
		vo.setMem_phone(request.getParameter("mem_phone"));
		vo.setMem_email(request.getParameter("mem_email"));
		vo.setMem_add1(request.getParameter("mem_add1"));
		vo.setMem_add2(request.getParameter("mem_add2"));
		vo.setMem_add3(request.getParameter("mem_add3"));
		vo.setMem_add4(request.getParameter("mem_add4"));
		vo.setMem_kor_for(request.getParameter("mem_kor_for"));
		vo.setMem_post_numb1(request.getParameter("mem_post_numb1"));
		vo.setMem_post_numb2(request.getParameter("mem_post_numb2"));
		vo.setMem_gender(request.getParameter("mem_gender"));
		vo.setMem_photo("resources/images/search.png");
		vo.setMem_bir(request.getParameter("mem_bir"));				
		
		try {
			MemberService.insertMember(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("성공고오고오공");
		
		return "redirect:main";
	}
	
	@RequestMapping("/juso")
	public String juso(){
		return "member/jusoPopup";
	}
	
	@RequestMapping("/juso2")
	public String juso2(){
		return "member/jusoPopup2";
	}
	
	@RequestMapping("/idCheck")
	public String idCheck(HttpServletRequest request,Model model) throws Exception{
		String id = request.getParameter("id"); //input
		int checkId= memberDAOImpl.idCheck(id);//숫자 -1,1
		request.setAttribute("id" ,id);
		System.out.println(id+"컨트");
		return "member/idCheck";
	}

}
