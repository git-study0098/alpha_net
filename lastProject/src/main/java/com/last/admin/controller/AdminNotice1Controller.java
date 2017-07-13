package com.last.admin.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.last.common.service.AdminNotice1Service;
import com.last.common.service.ServiceException;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

@Controller
public class AdminNotice1Controller {
	
	
	private String uploadPath=System.getProperty("java.io.tmpdir");
	
	@Autowired
	private AdminNotice1Service adminNotice1Service;

	public void setAdminNotice1Service(AdminNotice1Service adminNotice1Service) {
		this.adminNotice1Service = adminNotice1Service;
	}
	
	@RequestMapping("/adminRegist")
	   public String listRegist(){
		      return "/notice_1_registry";
		   }
	
	@RequestMapping("/notice")
	public String listNotice(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model)throws SQLException, ServiceException{
		PagingVO viewData=null;
	      try {
	          viewData= adminNotice1Service.selectNotice1List(pageNumber);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData.getNotice1List().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData = adminNotice1Service.selectNotice1List(pageNumber);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      
	      
	      model.addAttribute("viewData",viewData);
	      model.addAttribute("pageNumber",pageNumber);
	      return "/notice_1";
	}
	
	@RequestMapping(value="/boardInsert",headers=("content-type=multipart/*"),method=RequestMethod.POST)
	public String boardInsert(HttpServletRequest request,Model model,@RequestParam("f") MultipartFile multipartFile){
		
		 String upload="C:/git/alpha_net/lastProject/src/main/webapp/resources/upload";
		 String url ="redirect:notice";
	      if(!multipartFile.isEmpty()){
	         File file= new File(upload, multipartFile.getOriginalFilename()+"$$"+System.currentTimeMillis());
	         
	         try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
	         
	      }
		
		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setNotice_code(adminNotice1Service.registNotice());
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setAttach_file(request.getParameter("attach_file"));
		vo.setRegist_date(new Date(12));
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
	
	@RequestMapping("/boardUpdateForm")
	public String boardUpdate(@RequestParam(value="notice_code") String noticeCode,Model model){
		String url ="notice_1_update";
		
		Notice1VO vo = null;
		try {
			vo = adminNotice1Service.selectNoticeCodeList(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);
		
		return url;
	}
	
	@RequestMapping("/boardUpdate")
	public String boardUpdate(HttpServletRequest request,Model model){
		String url ="redirect:notice";
		System.out.println("성공");
		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setNotice_code(request.getParameter("noticeCode"));
		vo.setEnroll_date(new Date(1000000));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setRegist_date(new Date(1000000));
		vo.setTitle(request.getParameter("title"));
		
		model.addAttribute(vo);
		
		try {
			adminNotice1Service.updateNotice1(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	}
		
}
