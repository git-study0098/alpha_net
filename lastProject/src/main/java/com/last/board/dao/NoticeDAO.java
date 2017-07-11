package com.last.board.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.vo.Notice1VO;

public class NoticeDAO {

	/**
	 * iBatis
	 */
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}

//	/**
//	 * myBatis
//	 */
//	protected SqlSession sqlSession;
//	
//	public void setSession(SqlSession sqlSession){
//		this.sqlSession = sqlSession;
//	}
	
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

	/**
	 * 기본적으로 회원은 조회만가능
	 * @param boardCode
	 * @return
	 * @throws SQLException
	 */
	
	
	/**
	 * 공지사항 전체리스트 조회 
	 * * @param boardCode
	 * 	@return
	 * 	@throws SQLException
	 */
	public List<Notice1VO> selectNotice1List(int firstRow, int endRow) throws SQLException{
		List<Notice1VO> selectNotice1List = (ArrayList<Notice1VO>)client.queryForList("selectNotice1",firstRow-1 , endRow-firstRow+1);
		return selectNotice1List;
	}
	
	public int selectNotice1Count() throws SQLException{
		int result = (Integer) client.queryForObject("selectNotice1_Count");
		return result;
	}
//public int selectNoticeUpdate() throws SQLException{
//		
//	}
//	public int selectNoticeUpdate() throws SQLException{
//		
//	}
//	public int selectNoticeUpdate() throws SQLException{
//		
//	}
}
