package com.last.admin.board.service;

import java.util.List;

import com.last.admin.board.dao.BoardOneDaoAdmin;
import com.last.vo.BoardVo;

public class BoardOneServiceAdmin implements BoardServiceAdmin {

	private BoardOneDaoAdmin boardOneDaoAdmin;

	public void setBoardOneDaoAdmin(BoardOneDaoAdmin boardOneDaoAdmin) {
		this.boardOneDaoAdmin = boardOneDaoAdmin;
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
