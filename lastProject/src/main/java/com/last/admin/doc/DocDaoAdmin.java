package com.last.admin.doc;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.QualifiRestrictVo;
import com.last.vo.SubjectVo;

public interface DocDaoAdmin {

	/**
	 * 
	 * @param memberId
	 * @param docCode
	 * @return
	 * @throws SQLException
	 * 특정회원의 제출한서류로 응시가능한 종목 출력
	 */
	public List<SubjectVo> selectDocStareList(String memberId, String docCode) throws SQLException;
	
	/**
	 * 
	 * @param memberId
	 * @param submitCode
	 * @return
	 * @throws SQLException
	 * 특정회원의 제출한서류 승인
	 */
	public int updateSubmitMemberDoc(String memberId, String submitCode) throws SQLException;
	
	/**
	 * 
	 * @param memberId
	 * @param qualifiCode
	 * @return
	 * @throws SQLException
	 * 특정회원의 자격코드로 자격제한 출력
	 */
	public List<QualifiRestrictVo> selectQualifiRestrictList(String memberId, String qualifiCode) throws SQLException;
	
	/**
	 * 
	 * @param memberId
	 * @param submitCode
	 * @return
	 * @throws SQLException
	 * 특정회원의 제출자격사항 승인
	 */
	public int updateSubmitMemberQualifi(String memberId, String submitCode) throws SQLException;
	
	public int insertFileUpload(String fileUrl) throws SQLException;
	
	public int deleteFile(String fileUrl) throws SQLException;
}
