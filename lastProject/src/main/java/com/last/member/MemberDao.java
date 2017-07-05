package com.last.member;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.DocVo;
import com.last.vo.ExamVo;
import com.last.vo.MemberVo;
import com.last.vo.PaperVo;
import com.last.vo.QualifiRestrictVo;
import com.last.vo.QualifiVo;
import com.last.vo.StareVo;
import com.last.vo.SubjectVo;

public interface MemberDao {

	/**
	 * 응시내역 조회
	 * @param memberId
	 * @param stareCode
	 * @return
	 * @throws SQLException
	 */
	public List<StareVo> selectStareHistoryList(String stareCode) throws SQLException;
	
	/**
	 * 응시하기(원서접수)
	 * @param memberId
	 * @param stareVo
	 * @return
	 * @throws SQLException
	 */
	public int insertStare(String memberId, StareVo stareVo) throws SQLException;
	
	/**
	 * 개인정보 수정
	 * @param memberVo
	 * @return
	 * @throws SQLException
	 */
	public int updateMemberInfo(MemberVo memberVo) throws SQLException;
	
	/**
	 * 특정원서정보 조회
	 * @param memberId
	 * @param stareCode
	 * @return
	 * @throws SQLException
	 */
	public StareVo selectStareInfo(String stareCode) throws SQLException;
	
	/**
	 * 특정시험의 자격제한 조회
	 * @param memberId
	 * @return
	 * @throws SQLException
	 */
	public QualifiRestrictVo selectQualifiRestrictVo(String examCode) throws SQLException;
	
	/**
	 * 특정시험의 서류조회
	 * @param memberId
	 * @return
	 * @throws SQLException
	 */
	public DocVo selectDoc(String examCode) throws SQLException;
	
	/**
	 * 서류 제출
	 * @param memberId
	 * @param dorVo
	 * @return
	 * @throws SQLException
	 */
	public int insertDocVo(DocVo dorVo) throws SQLException;
	
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
	
	/**
	 * 서류내역 조회
	 * @param memberId
	 * @param qualifiCode
	 * @return
	 * @throws SQLException
	 */
	public List<DocVo> selectQualifiDocList(String qualifiCode) throws SQLException;
	
	/**
	 * 면제시험 조회
	 * @param memberId
	 * @param stareCode
	 * @return
	 * @throws SQLException
	 */
	public List<ExamVo> selectExemptionExamList(String stareCode) throws SQLException;

	/**
	 * 면제과목 조회
	 * @param memberId
	 * @param stareCode
	 * @return
	 * @throws SQLException
	 */
	public List<SubjectVo> selectExemptionSubjectList(String stareCode) throws SQLException;
	
	
}
