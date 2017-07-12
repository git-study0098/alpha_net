package com.last.admin.board.service;

import java.sql.SQLException;

import com.last.admin.board.dao.AdminNotice1DAO;
import com.last.vo.Notice1VO;

public class AdminNotice1Service {
	
	private AdminNotice1DAO adminDao;
	
	public void setAdminDao(AdminNotice1DAO adminDao) {
		this.adminDao = adminDao;
	}
	
	public void updateNotice1(Notice1VO notice1VO) throws SQLException{
		adminDao.updateNotice1(notice1VO);
	}
	
	public void deleteNotice1(String noticeCode) throws SQLException{
		adminDao.deleteNotice1(noticeCode);
	}
	
	public int insertNotice1(Notice1VO notice1VO) throws SQLException{
		
		int result=adminDao.insertNotice1(notice1VO);
		
		return result;
	}
}
