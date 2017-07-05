package com.last.admin.board.service;

import java.util.List;

import com.last.vo.BoardVo;
import com.last.vo.vo;

public interface BoardServiceAdmin {

	public List<BoardVo> getBoardAllList(String boardCode);
	
	public List<BoardVo> getBoardSearchList(String boardCode, String index, String key);
	
	public void AddBoard(BoardVo boardVo);
	
	public void ModBoard(BoardVo boardVo);
	
	public void RidBoard(String boardCode);
	
}
