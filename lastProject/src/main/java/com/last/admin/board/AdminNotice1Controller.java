package com.last.admin.board;

import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.last.admin.board.service.AdminNotice1Service;
import com.last.vo.Notice1VO;

@Controller
public class AdminNotice1Controller {
	
	
	@Autowired
	private AdminNotice1Service adminNotice1Service;

	public void setAdminNotice1Service(AdminNotice1Service adminNotice1Service) {
		this.adminNotice1Service = adminNotice1Service;
	}

	@RequestMapping("/adminRegist")
	   public String listRegist(){
		      return "/notice_1_registry";
		   }
	
	@RequestMapping("/boardInsert")
	public String boardInsert(HttpServletRequest request,Model model){
		String url ="redirect:notice";
		System.out.println("성공");
		Notice1VO vo = new Notice1VO();
		vo.setAdminCode(request.getParameter("adminCode"));
		vo.setEnrollDate(new Date(12));
		vo.setNoticeCode("notice050000000017");
		vo.setNoticeContent(request.getParameter("noticeContent"));
		vo.setRegistDate(new Date(12));
		vo.setTitle(request.getParameter("title"));
		
		model.addAttribute(vo);
		
		int result=0;
		try {
			result=adminNotice1Service.insertNotice1(vo);
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return url;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
