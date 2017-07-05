package com.last.board.service;

import java.util.List;

import com.last.board.dao.BoardPdsDao;
import com.last.vo.BoardVo;

public class BoardPdsService implements BoardService {

	private BoardPdsDao boardPdsDao;

	public void setBoardPdsDao(BoardPdsDao boardPdsDao) {
		this.boardPdsDao = boardPdsDao;
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

	@Override
	public List<BoardVo> getBoardList(String boardCode, String first, String end) {
		// TODO Auto-generated method stub
		return null;
	}

}
