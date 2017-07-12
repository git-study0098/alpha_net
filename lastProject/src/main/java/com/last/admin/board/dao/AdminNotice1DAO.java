package com.last.admin.board.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.vo.Notice1VO;

public class AdminNotice1DAO {
		
	private SqlMapClient client;
		
		public void setClient(SqlMapClient client) {
			this.client = client;
		}
		
		public List<Notice1VO> selectNotice1List() throws SQLException{
			List<Notice1VO> selectNotice1List = (ArrayList<Notice1VO>)client.queryForList("selectNotice1");
			return selectNotice1List;
		}
		
		public int updateNotice1(Notice1VO notice1VO) throws SQLException{
			int result = (Integer) client.update("notice1Update",notice1VO);
			return result;
		}
		public int deleteNotice1(String noticeCode) throws SQLException{
			int result = (Integer) client.update("notice1Delete",noticeCode);
			return result;
		}
		public int insertNotice1(Notice1VO notice1VO) throws SQLException{
			int result = (Integer) client.update("insertNotice1",notice1VO);
			return result;
		}
}
