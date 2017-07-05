package com.last.paper;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.PaperVo;
import com.last.vo.QualifiVo;

public interface PaperDao {

	/**
	 * 확인서내역 조회
	 * @param memberId
	 * @param paperCode
	 * @return
	 * @throws SQLException
	 */
	public List<PaperVo> selectPaperHistoryList(String paperCode) throws SQLException;
	
	/**
	 * 자격증내역 조회
	 * @param memberId
	 * @param qualifiCode
	 * @return
	 * @throws SQLException
	 */
	public List<QualifiVo> selectQualifiHistoryList(String qualifiCode) throws SQLException;
	
}
