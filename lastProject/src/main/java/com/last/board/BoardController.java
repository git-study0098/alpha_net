package com.last.board;

import com.last.board.service.BoardService;

//@Controller
public class BoardController {

//	@Autowired
	private BoardService boardService;

	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	
}
