package com.last.admin.paper;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.PaperVo;
import com.last.vo.QualifiVo;

public interface PaperDaoAdmin {

	/**
	 * 특정회원의 제출 확인서 내역 조회
	 * @param memberId
	 * @param paperCode
	 * @return
	 * @throws SQLException
	 */
	public List<PaperVo> selectMemberPaperHistoryList(String memberId, String paperCode) throws SQLException;
	
	/**
	 * 제출 확인서 추가/수정
	 * @param memberId
	 * @param paperVo
	 * @return
	 * @throws SQLException
	 */
	public int insertMemberPaperHistoryList(String memberId, PaperVo paperVo) throws SQLException;
	
	public int updateMemberPaperHistoryList(String memberId, PaperVo paperVo) throws SQLException;
	
	/**
	 * 특정회원의 자격증명 내역 조회
	 * @param memberId
	 * @param qualifiCode
	 * @return
	 * @throws SQLException
	 */
	public List<QualifiVo> selectMemberQualifiHistoryList(String memberId, String qualifiCode) throws SQLException;
	
	/**
	 * 자격증명 추가/삭제
	 * @param memberId
	 * @param qualifiVo
	 * @return
	 * @throws SQLException
	 */
	public int inserttMemberQualifiHistoryList(String memberId, QualifiVo qualifiVo) throws SQLException;
	
	public int updatetMemberQualifiHistoryList(String memberId, QualifiVo qualifiVo) throws SQLException;
	
	/**
	 * 특정회원의 미발급 자격증 조회
	 * @param memberId
	 * @param qualifiCode
	 * @return
	 * @throws SQLException
	 */
	public List<QualifiVo> selectMemberNonQualifiList(String memberId, String qualifiCode) throws SQLException;
	
	/**
	 * 양식 추가/삭제
	 * @param paperVo
	 * @return
	 * @throws SQLException
	 */
	public int insertPaperForm(PaperVo paperVo) throws SQLException;
	
	public int deletePaperForm(String paperCode) throws SQLException;
}
