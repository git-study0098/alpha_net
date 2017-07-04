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
	
	//자주묻는 게시판 등록,수정,삭제
	@RequestMapping(value="/boardAddForm", method=RequestMethod.GET)
	public String boardAddForm(){
		System.out.println("들어오나");
		return "admin/boardAddForm";
	}
	
	//자주묻는 게시판 등록,수정,삭제
//	@RequestMapping(value="/boardAdd", method=RequestMethod.POST)
//	public String boardAdd(BoardVo boardVo){
//		
//		String url = "redirect:/admin/";
//		
//		boardServiceAdmin.AddBoard(boardVo);
//		
//		return url;
//	}
	//1대1 게시판 수정,삭제
	
	//공지사항 등록,수정,삭제
}
