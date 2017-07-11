package com.last.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@Autowired
	private CommonService commonService;
	
	public void SetCommonService(CommonService commonService){
		this.commonService = commonService;
	}
	
	@RequestMapping("/main")
	public String main(){
		String url = "1main";
		System.out.println("창연이형");
		
		return url;
	}
}
