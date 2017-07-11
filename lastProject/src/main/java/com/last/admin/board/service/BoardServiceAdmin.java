package com.last.admin.board.service;

import java.util.List;

import com.last.vo.Notice1VO;

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

	public List<Notice1VO> getBoardAllList(String boardCode);
	
	public List<Notice1VO> getBoardList(String boardCode, int first, int end);
	
	public List<Notice1VO> getBoardSearchList(String boardCode, String index, String key);
	
	public void addBoard(Notice1VO boardVo);
	
	public void modBoard(Notice1VO boardVo);
	
	public void ridBoard(String boardCode);
	
}
