package com.last.board.service;

import java.util.List;

import com.last.board.dao.BoardOneDao;
import com.last.vo.BoardVo;

public class BoardOneService implements BoardService {

	private BoardOneDao boardOneDao;

	public void setBoardOneDao(BoardOneDao boardOneDao) {
		this.boardOneDao = boardOneDao;
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
