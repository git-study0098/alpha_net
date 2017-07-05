package com.last.board.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.vo.BoardVo;

abstract public class BoardDao {
	
	protected SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}

	protected SqlSession sqlSession;
	
	public void setSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}
	//////////////////////////////////////////////////////////////
///////////////////////////////////////////
//ArrayList<ProductVO> listNewProduct = null;
//ArrayList<ProductVO> listBestProduct = null;
//ArrayList<ProductVO> listForKindProduct = null;
//
//public void setProductList() throws SQLException{
//System.out.println("!!!!!!!");
//listNewProduct = (ArrayList<ProductVO>) client.queryForList(
//"listNewProduct", null);
//listBestProduct = (ArrayList<ProductVO>) client.queryForList(
//"listBestProduct", null);		
//listForKindProduct = (ArrayList<ProductVO>) client.queryForList(
//"listAllProduct", null);
//}

	abstract public int insertBoard(BoardVo boardVo) throws SQLException;
	
	public List<BoardVo> selectBoardAllList(String boardCode) throws SQLException{
		
		return null;
	}
	
	public List<BoardVo> selectBoardSearchList(String boardCode, String index, String key) throws SQLException{
		
		return null;
	}
	
	public int updateBoard(BoardVo boardVo) throws SQLException{
		
		return 0;
	}
	
	public int deleteBoard(String boardCode) throws SQLException{
		
		return 0;
	}
		
}
