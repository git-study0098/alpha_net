package com.last.board.admin;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.BoardVo;

public class BoardServiceAdmin {

	private BoardDaoAdmin boardDaoAdmin;

	public void setBoardDao(BoardDaoAdmin boardDaoAdmin) {
		this.boardDaoAdmin = boardDaoAdmin;
	}
	
	public List<BoardVo> getBoard(){
		List<BoardVo> board = null;
		
		try {
			board = boardDaoAdmin.selectBoard();
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
		return board;
	}
	
	public List<BoardVo> getBoard(String index, String key){
		List<BoardVo> board = null;
		
		try {
			board = boardDaoAdmin.selectBoard(index, key);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return board;
	}
	
	public void AddBoard(BoardVo boardVo){
		int result = 0;
		
		try {
			result = boardDaoAdmin.insertBoard(boardVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void ModBoard(BoardVo boardVo){
		int result = 0;
		
		try {
			result = boardDaoAdmin.updateBoard(boardVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void RidBoard(int boardNum){
		int result = 0;
		
		try {
			result = boardDaoAdmin.deleteBoard(boardNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
