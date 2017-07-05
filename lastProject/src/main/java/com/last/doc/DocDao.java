package com.last.doc;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.QualifiRestrictVo;
import com.last.vo.SubjectVo;

public interface DocDao {

	public List<SubjectVo> selectDocStareList(String memberId, String docCode) throws SQLException;
	
	public List<QualifiRestrictVo> selectQualifiRestrictList(String memberId, String qualifiCode) throws SQLException;
	
}
