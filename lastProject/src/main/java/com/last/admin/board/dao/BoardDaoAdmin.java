package com.last.admin.board.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.vo.Notice1VO;

/**
 * 
 * @author kimjae
 * 게시판 공통 dao
 * 기본적인 CRUD, search select
 */
abstract public class BoardDaoAdmin {

	protected SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}

	protected SqlSession sqlSession;
	
	public void setSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}
	//////////////////////////////////////////////////////////////
///////////////////////////////////////////  스케쥴링으로 리스트 새로고침
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

	abstract public int insertBoard(Notice1VO boardVo) throws SQLException;
	
	public List<Notice1VO> selectBoardAllList(String boardCode) throws SQLException{
		
		return null;
	}
	
	public List<Notice1VO> selectBoardList(String boardCode, int first, int end) throws SQLException{
		
		return null;
	}

	public List<Notice1VO> selectBoardSearchList(String boardCode, String index, String key) throws SQLException{
		
		return null;
	}
	
	public int updateBoard(Notice1VO boardVo) throws SQLException{
		
		return 0;
	}
	
	public int deleteBoard(String boardCode) throws SQLException{
		
		return 0;
	}
	
}
