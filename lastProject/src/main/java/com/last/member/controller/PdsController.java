package com.last.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.PdsService;
import com.last.common.service.ServiceException;
import com.last.common.vo.PagingVO;
import com.last.common.vo.PdsVO;

@Controller
public class PdsController {
	
	@Autowired
	private PdsService pdsService;
	
	public void setPdsService(PdsService pdsService) {
		this.pdsService = pdsService;
	}

	@RequestMapping("/pdsList")
	   public String listPds(@RequestParam(value="page",defaultValue="1") int pageNumber, Model model){

		      PdsVO viewData=null;
		      try {
		          viewData= pdsService.selectPdsList(pageNumber);
		      } catch (ServiceException e) {
		         e.printStackTrace();
		      }
		      
		      if(viewData.getPdsList().isEmpty()){
		         pageNumber--;
		         if(pageNumber<=0) pageNumber=1;
		         try {
		            viewData = pdsService.selectPdsList(pageNumber);
		         } catch (ServiceException e) {
		            e.printStackTrace();
		         }
		      }
		      model.addAttribute("viewData",viewData);
		      model.addAttribute("pageNumber",pageNumber);
		      return "/jaryosil_1";
		   }
	
}
