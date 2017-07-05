package com.last.admin.doc;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.QualifiRestrictVo;
import com.last.vo.SubjectVo;

public interface DocDaoAdmin {

	public List<SubjectVo> selectDocStareList(String memberId, String docCode) throws SQLException;
	
	public int updateSubmitMemberDoc(String memberId, String submitCode) throws SQLException;
	
	public List<QualifiRestrictVo> selectQualifiRestrictList(String memberId, String qualifiCode) throws SQLException;
	
	public int updateSubmitMemberQualifi(String memberId, String submitCode) throws SQLException;
	
	public int insertFileUpload(String fileUrl) throws SQLException;
	
	public int deleteFile(String fileUrl) throws SQLException;
}
