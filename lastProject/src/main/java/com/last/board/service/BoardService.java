package com.last.board.service;

import java.util.List;

import com.last.vo.Notice1VO;

public interface BoardService {

	public List<Notice1VO> getBoardAllList(String boardCode);
	
	public List<Notice1VO> getBoardList(String boardCode, String first, String end);
	
	public List<Notice1VO> getBoardSearchList(String boardCode, String index, String key);
	
	public void AddBoard(Notice1VO boardVo);
	
	public void ModBoard(Notice1VO boardVo);
	
	public void RidBoard(String boardCode);
	
}
