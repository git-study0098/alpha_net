package com.last.admin.exam;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.ExamVo;
import com.last.vo.MemberVo;
import com.last.vo.PayVo;
import com.last.vo.StareVo;

public interface ExamDaoAdmin {

	/**
	 * 시험내용 입력
	 * @param examVo
	 * @return
	 * @throws SQLException
	 */
	public int insertExamList(ExamVo examVo) throws SQLException;
	
	/**
	 * 특정회원의 지불내역 조회
	 * @param memberId
	 * @param PayCode
	 * @return
	 * @throws SQLException
	 */
	public List<PayVo> selectPayHistoryList(String memberId, String PayCode) throws SQLException;
	
	/**
	 * 응시정보 입력/수정/삭제
	 * @param stareVo
	 * @return
	 * @throws SQLException
	 */
	public int insertStareInfo(StareVo stareVo) throws SQLException;
	
	public int updateStareInfo(StareVo stareVo) throws SQLException;
	
	public int deleteStareInfo(String stareCode) throws SQLException;
	
	/**
	 * 특정시험의 응시회원 조회
	 * @param examCode
	 * @return
	 * @throws SQLException
	 */
	public List<MemberVo> selectStareMemberExam(String examCode) throws SQLException;
	
}
