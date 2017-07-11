package com.last.board.service;

import java.util.List;

import com.last.board.dao.BoardOneDao;
import com.last.vo.Notice1VO;

public class BoardOneService implements BoardService {

	private BoardOneDao boardOneDao;

	public void setBoardOneDao(BoardOneDao boardOneDao) {
		this.boardOneDao = boardOneDao;
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
	public void AddBoard(Notice1VO boardVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void ModBoard(Notice1VO boardVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void RidBoard(String boardCode) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Notice1VO> getBoardList(String boardCode, String first, String end) {
		// TODO Auto-generated method stub
		return null;
	}

}
