package com.last.board.service;

import java.util.List;

import com.last.board.dao.BoardNtcDao;
import com.last.vo.BoardVo;

public class BoardNtcService implements BoardService {

	private BoardNtcDao boardNtcDAo;

	public void setBoardNtcDAo(BoardNtcDao boardNtcDAo) {
		this.boardNtcDAo = boardNtcDAo;
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
