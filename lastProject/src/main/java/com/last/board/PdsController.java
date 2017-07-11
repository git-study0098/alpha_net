package com.last.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.board.service.PdsService;
import com.last.board.service.ServiceException;
import com.last.vo.PagingVO;

@Controller
public class PdsController {
	
	private PdsService pdsService;
	
	public void setPdsService(PdsService pdsService) {
		this.pdsService = pdsService;
	}

	@RequestMapping("/pdsList")
	   public String listPds(@RequestParam(value="page",defaultValue="1") int pageNumber, Model model){

		      PagingVO viewData=null;
		      try {
		          viewData= pdsService.selectPdsList(pageNumber);
		      } catch (ServiceException e) {
		         e.printStackTrace();
		      }
		      
		      if(viewData.getNotice1List().isEmpty()){
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
