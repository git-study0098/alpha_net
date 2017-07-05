package com.last.admin.board.service;

import java.util.List;

import com.last.vo.BoardVo;
import com.last.vo.vo;

/**
 * 
 * @author kimjae
 * 
 * add:dao의 insert
 * mod:dao의 update
 * rid:dao의 delete
 * get:dao의 select
 *
 */
public interface BoardServiceAdmin {

	public List<BoardVo> getBoardAllList(String boardCode);
	
	public List<BoardVo> getBoardList(String boardCode, int first, int end);
	
	public List<BoardVo> getBoardSearchList(String boardCode, String index, String key);
	
	public void addBoard(BoardVo boardVo);
	
	public void modBoard(BoardVo boardVo);
	
	public void ridBoard(String boardCode);
	
}
