package com.last.board.service;

import java.util.List;

import com.last.board.dao.BoardQnaDao;
import com.last.vo.BoardVo;

public class BoardQnaService implements BoardService {

	private BoardQnaDao boardQnaDao;

	public void setBoardQnaDao(BoardQnaDao boardQnaDao) {
		this.boardQnaDao = boardQnaDao;
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
	public void AddBoard(BoardVo boardVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void ModBoard(BoardVo boardVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void RidBoard(String boardCode) {
		// TODO Auto-generated method stub

	}

}
