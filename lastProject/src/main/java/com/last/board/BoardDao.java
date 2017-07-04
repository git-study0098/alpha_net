package com.last.board;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.BoardVo;

public interface BoardDao {

	public List<BoardVo> selectBoard() throws SQLException;
	
	public List<BoardVo> selectBoard(String index, String key) throws SQLException;
	
//	public BoardVo selectMemberBoard(MemberVo memberVo) throws SQLException;
	
	public int insertBoard(BoardVo boardVo) throws SQLException;
	
	public int updateBoard(BoardVo boardVo) throws SQLException;
	
	public int deleteBoard(int boardNum) throws SQLException;
	
}
