package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.Notice1VO;


public class PdsDAO {

	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	public List<Notice1VO> selectPdsList(int firstRow, int endRow) throws SQLException{
		List<Notice1VO> selectPdsList = (ArrayList<Notice1VO>)client.queryForList("selectPdsList",firstRow-1 , endRow-firstRow+1);
		return selectPdsList;
	}
	
	public int selectPdsCount() throws SQLException{
		int result = (Integer) client.queryForObject("selectPdsCount");
		return result;
	}
}
