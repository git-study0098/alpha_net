package com.last.common.service;

import java.util.Collections;
import java.util.List;

import com.last.common.dao.PdsDAO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;
import com.last.common.vo.PdsVO;

public class PdsService {

	private PdsDAO pdsDao;
	
	public void setPdsDao(PdsDAO pdsDao) {
		this.pdsDao = pdsDao;
	}
	
	private static final int PDS_COUNT_PER_PAGE=10;
	/*
	    * 관리자 서비스 메소드
	    */
	   public PdsVO selectPdsList(int pageNumber) throws ServiceException {

	      int currentPageNumber = pageNumber;
	      try {
	         
	         int pdsTotalCount = pdsDao.selectPdsCount();

	         List<Notice1VO> pdsList = null;
	         int firstRow = 0;
	         int endRow = 0;
	         if (pdsTotalCount > 0) {
	            firstRow = (pageNumber - 1) * PDS_COUNT_PER_PAGE + 1;
	            endRow = firstRow + PDS_COUNT_PER_PAGE - 1;
	            pdsList = pdsDao.selectPdsList(firstRow, endRow);
	         } else {
	            currentPageNumber = 0;
	            pdsList = Collections.emptyList();
	         }
	         return new PdsVO(pdsList, pdsTotalCount,
	               currentPageNumber, PDS_COUNT_PER_PAGE, firstRow, endRow);
	      } catch (Exception e) {
	    	  throw new ServiceException("게시판 리스트 구하기 실패!",e);
	      } 
	   }
}
