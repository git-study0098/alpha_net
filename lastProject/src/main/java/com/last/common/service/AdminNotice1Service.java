package com.last.common.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import com.last.common.dao.AdminNotice1DAO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

public class AdminNotice1Service {
	
	private AdminNotice1DAO adminDao;
	
	public void setAdminDao(AdminNotice1DAO adminDao) {
		this.adminDao = adminDao;
	}
	
	private static final int NOTICE_COUNT_PER_PAGE=10;
	/*
	    * 관리자 서비스 메소드
	    */
	   public PagingVO selectNotice1List(int pageNumber) throws ServiceException {

	      int currentPageNumber = pageNumber;
	      try {
	         
	         int notice1TotalCount = adminDao.selectNotice1Count();

	         List<Notice1VO> notice1List = null;
	         int firstRow = 0;
	         int endRow = 0;
	         if (notice1TotalCount > 0) {
	            firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
	            endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
	            notice1List = adminDao.selectNotice1List(firstRow, endRow);
	         } else {
	            currentPageNumber = 0;
	            notice1List = Collections.emptyList();
	         }
	         return new PagingVO(notice1List, notice1TotalCount,
	               currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
	      } catch (Exception e) {
	    	  throw new ServiceException("게시판 리스트 구하기 실패!",e);
	      } 
	   }
	   
	public Notice1VO selectNoticeCodeList(String notice_code) throws SQLException{
		Notice1VO vo = adminDao.selectNotice1(notice_code);
		return vo;
		
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