package com.last.admin.member;

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

public interface MemberDaoAdmin {

	/**
	 * 특정회원의 응시내역 조회
	 * @param memberId
	 * @param stareCode
	 * @return
	 * @throws SQLException
	 */
	public List<StareVo> selectMemberStareHistoryList(String memberId, String stareCode) throws SQLException;
	
	/**
	 * 휴면계정?
	 * @param memberVo
	 * @return
	 * @throws SQLException
	 */
	public int updateMemberInfo(MemberVo memberVo) throws SQLException;
	
	/**
	 * 특정회원의 응시정보 조회
	 * @param memberId
	 * @param stareCode
	 * @return
	 * @throws SQLException
	 */
	public StareVo selectStareInfo(String memberId, String stareCode) throws SQLException;
	
	/**
	 * 특정회원의 자격제한 조회
	 * @param memberId
	 * @return
	 * @throws SQLException
	 */
	public QualifiRestrictVo selectQualifiRestrictVo(String memberId) throws SQLException;
	
	/**
	 * 특정회원의 서류조회
	 * @param memberId
	 * @return
	 * @throws SQLException
	 */
	public List<DocVo> selectMemberDocList(String memberId) throws SQLException;
	
	/**
	 * 특정회원의 서류 승인
	 * @param memberId
	 * @param dorVo
	 * @return
	 * @throws SQLException
	 */
	public int insertDocVo(String memberId, DocVo dorVo) throws SQLException;
	
	/**
	 * 특정회원의 확인서내역 조회
	 * @param memberId
	 * @param paperCode
	 * @return
	 * @throws SQLException
	 */
	public List<PaperVo> selectMemberPaperHistoryList(String memberId, String paperCode) throws SQLException;
	
	/**
	 * 특정회원의 자격증내역 조회
	 * @param memberId
	 * @param qualifiCode
	 * @return
	 * @throws SQLException
	 */
	public List<QualifiVo> selectMemberQualifiHistoryList(String memberId, String qualifiCode) throws SQLException;
	
	/**
	 * 특정회원의 서류내역 조회
	 * @param memberId
	 * @param qualifiCode
	 * @return
	 * @throws SQLException
	 */
	public List<DocVo> selectQualifiDocList(String memberId, String qualifiCode) throws SQLException;
	
	/**
	 * 특정회원의 면제시험 조회
	 * @param memberId
	 * @param stareCode
	 * @return
	 * @throws SQLException
	 */
	public List<ExamVo> selectExemptionExamList(String memberId, String stareCode) throws SQLException;

	/**
	 * 특정회원의 면제과목 조회
	 * @param memberId
	 * @param stareCode
	 * @return
	 * @throws SQLException
	 */
	public List<SubjectVo> selectExemptionSubjectList(String memberId, String stareCode) throws SQLException;
	
	
}
