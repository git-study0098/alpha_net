package com.last.board.service;

import java.util.List;

import com.last.vo.BoardVo;

public interface BoardService {

	public List<BoardVo> getBoardAllList(String boardCode);
	
	public List<BoardVo> getBoardList(String boardCode, String first, String end);
	
	public List<BoardVo> getBoardSearchList(String boardCode, String index, String key);
	
	public void AddBoard(BoardVo boardVo);
	
	public void ModBoard(BoardVo boardVo);
	
	public void RidBoard(String boardCode);
	
}
