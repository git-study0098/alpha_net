package com.last.board;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.BoardVo;

public class BoardService {

	private BoardDao boardDAo;

	public void setBoardDAo(BoardDao boardDAo) {
		this.boardDAo = boardDAo;
	}
	
	public List<BoardVo> getBoard(){
		List<BoardVo> board = null;
		
		try {
			board = boardDAo.selectBoard();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return board;
	}
	
	public List<BoardVo> getBoard(String index, String key){
		List<BoardVo> board = null;
		
		try {
			board = boardDAo.selectBoard(index, key);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return board;
	}
	
	public void AddBoard(BoardVo boardVo){
		int result = 0;
		
		try {
			result = boardDAo.insertBoard(boardVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void ModBoard(BoardVo boardVo){
		int result = 0;
		
		try {
			result = boardDAo.updateBoard(boardVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void RidBoard(int boardNum){
		int result = 0;
		
		try {
			result = boardDAo.deleteBoard(boardNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
