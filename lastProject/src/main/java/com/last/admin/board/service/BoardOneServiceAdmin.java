package com.last.admin.board.service;

import java.util.List;

import com.last.admin.board.dao.BoardOneDaoAdmin;
import com.last.vo.Notice1VO;

public class BoardOneServiceAdmin implements BoardServiceAdmin {

	private BoardOneDaoAdmin boardOneDaoAdmin;

	public void setBoardOneDaoAdmin(BoardOneDaoAdmin boardOneDaoAdmin) {
		this.boardOneDaoAdmin = boardOneDaoAdmin;
	}

	@Override
	public List<Notice1VO> getBoardAllList(String boardCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Notice1VO> getBoardSearchList(String boardCode, String index,
			String key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addBoard(Notice1VO boardVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modBoard(Notice1VO boardVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void ridBoard(String boardCode) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Notice1VO> getBoardList(String boardCode, int first, int end) {
		// TODO Auto-generated method stub
		return null;
	}

}
