package com.last.board.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.last.vo.BoardVo;

//@Controller
@RequestMapping("/admin")
public class BoardControllerAdmin {

//	@Autowired
	private BoardServiceAdmin boardServiceAdmin;

	public void setBoardServiceAdmin(BoardServiceAdmin boardServiceAdmin) {
		this.boardServiceAdmin = boardServiceAdmin;
	}
	
	//���ֹ��� �Խ��� ���,����,����
	@RequestMapping(value="/boardAddForm", method=RequestMethod.GET)
	public String boardAddForm(){
		System.out.println("������");
		return "admin/boardAddForm";
	}
	
	//���ֹ��� �Խ��� ���,����,����
//	@RequestMapping(value="/boardAdd", method=RequestMethod.POST)
//	public String boardAdd(BoardVo boardVo){
//		
//		String url = "redirect:/admin/";
//		
//		boardServiceAdmin.AddBoard(boardVo);
//		
//		return url;
//	}
	//1��1 �Խ��� ����,����
	
	//�������� ���,����,����
}
