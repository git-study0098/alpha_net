package com.last.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.NoticeService;
import com.last.common.service.ServiceException;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;

	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
		
	
	@RequestMapping("/noticeList")
	   public String listNotice(@RequestParam(value="page",defaultValue="1") int pageNumber, Model model){
				
		      PagingVO viewData=null;
		      try {
		          viewData= noticeService.selectNotice1List(pageNumber);
		      } catch (ServiceException e) {
		         e.printStackTrace();
		      }
		      
		      if(viewData.getNotice1List().isEmpty()){
		         pageNumber--;
		         if(pageNumber<=0) pageNumber=1;
		         try {
		            viewData = noticeService.selectNotice1List(pageNumber);
		         } catch (ServiceException e) {
		            e.printStackTrace();
		         }
		      }
		      model.addAttribute("viewData",viewData);
		      model.addAttribute("pageNumber",pageNumber);
		      return "/notice_1";
		   }
	
}
