package com.last.paper;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.PaperVo;
import com.last.vo.QualifiVo;

public interface PaperDao {

	public List<PaperVo> selectMemberPaperHistoryList(String memberId, String paperCode) throws SQLException;
	
	public List<QualifiVo> selectMemberQualifiHistoryList(String memberId, String qualifiCode) throws SQLException;
	
}
