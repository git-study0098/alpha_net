package com.last.admin.paper;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.PaperVo;
import com.last.vo.QualifiVo;

public interface PaperDaoAdmin {

	public List<PaperVo> selectMemberPaperHistoryList(String memberId, String paperCode) throws SQLException;
	
	public int insertMemberPaperHistoryList(String memberId, PaperVo paperVo) throws SQLException;
	
	public int updateMemberPaperHistoryList(String memberId, PaperVo paperVo) throws SQLException;
	
	public List<QualifiVo> selectMemberQualifiHistoryList(String memberId, String qualifiCode) throws SQLException;
	
	public int inserttMemberQualifiHistoryList(String memberId, QualifiVo qualifiVo) throws SQLException;
	
	public int updatetMemberQualifiHistoryList(String memberId, QualifiVo qualifiVo) throws SQLException;
	
	public List<QualifiVo> selectMemberQualifiList(String memberId, String qualifiCode) throws SQLException;
	
}
