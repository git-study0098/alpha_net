package com.last.board.dao;

import java.sql.SQLException;

import com.last.vo.Notice1VO;

public class BoardOneDao extends NoticeDAO {

	/**
	 * 추가/수정/삭제 가능한 1대1 게시판
	 * @param boardVo
	 * @return
	 * @throws SQLException
	 */
	public int insertBoard(Notice1VO boardVo) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateBoard(Notice1VO boardVo) throws SQLException{
		
		return 0;
	}
	
	public int deleteBoard(String boardCode) throws SQLException{
		
		return 0;
	}

}
