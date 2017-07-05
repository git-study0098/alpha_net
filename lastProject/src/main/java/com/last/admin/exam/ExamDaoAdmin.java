package com.last.admin.exam;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.ExamVo;
import com.last.vo.MemberVo;
import com.last.vo.PayVo;
import com.last.vo.StareVo;

public interface ExamDaoAdmin {

	public int insertExamList(ExamVo examVo) throws SQLException;
	
	public List<PayVo> selectPayHistoryList(String memberId, String PayCode) throws SQLException;
	
	public int insertStareInfo(StareVo stareVo) throws SQLException;
	
	public int updateStareInfo(StareVo stareVo) throws SQLException;
	
	public int deleteStareInfo(String stareCode) throws SQLException;
	
	public List<MemberVo> selectStareMemberExam(String examCode) throws SQLException;
	
}
