package com.last.common.service;

import java.util.Collections;
import java.util.List;

import com.last.common.dao.NoticeDAO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

public class NoticeService {

	private NoticeDAO noticeDao;
	

	public void setNoticeDao(NoticeDAO noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	private static final int NOTICE_COUNT_PER_PAGE=10;
	/*
	    * 관리자 서비스 메소드
	    */
	   public PagingVO selectNotice1List(int pageNumber) throws ServiceException {

	      int currentPageNumber = pageNumber;
	      try {
	         
	         int notice1TotalCount = noticeDao.selectNotice1Count();

	         List<Notice1VO> notice1List = null;
	         int firstRow = 0;
	         int endRow = 0;
	         if (notice1TotalCount > 0) {
	            firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
	            endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
	            notice1List = noticeDao.selectNotice1List(firstRow, endRow);
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
}
