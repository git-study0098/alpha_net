package com.last.admin.cbt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

//@Controller
public class CbtControllerAdmin {

//	@Autowired
	private CbtServiceAdmin cbtServiceAdmin;

	public void setCbtServiceAdmin(CbtServiceAdmin cbtServiceAdmin) {
		this.cbtServiceAdmin = cbtServiceAdmin;
	}
	
	
}
