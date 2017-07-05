package com.last.admin.board.service;

import java.util.List;

import com.last.admin.board.dao.BoardQnaDaoAdmin;
import com.last.vo.BoardVo;

public class BoardQnaServiceAdmin implements BoardServiceAdmin {

	private BoardQnaDaoAdmin boardQnaDaoAdmin;

	public void setBoardQnaDaoAdmin(BoardQnaDaoAdmin boardQnaDaoAdmin) {
		this.boardQnaDaoAdmin = boardQnaDaoAdmin;
	}
	
	@Override
	public List<BoardVo> getBoardAllList(String boardCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVo> getBoardSearchList(String boardCode, String index,
			String key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addBoard(BoardVo boardVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modBoard(BoardVo boardVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void ridBoard(String boardCode) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<BoardVo> getBoardList(String boardCode, int first, int end) {
		// TODO Auto-generated method stub
		return null;
	}

}
