package com.last.board.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.vo.Notice1VO;


public class PdsDAO extends NoticeDAO {

	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	public List<Notice1VO> selectPdsList(int firstRow, int endRow) throws SQLException{
		List<Notice1VO> selectPdsList = (ArrayList<Notice1VO>)client.queryForList("selectPds",firstRow-1 , endRow-firstRow+1);
		return selectPdsList;
	}
	
	public int selectPdsCount() throws SQLException{
		int result = (Integer) client.queryForObject("selectPdsCount");
		return result;
	}
}
