package com.last.exam;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.ExamVo;
import com.last.vo.MemberVo;
import com.last.vo.PayVo;

public interface ExamDao {

	public List<ExamVo> selectExamAllList() throws SQLException;
	
	public List<ExamVo> selectExamSearchList(String index, String key) throws SQLException;
	
	public List<PayVo> selectPayHistoryList(String memberId, String PayCode) throws SQLException;
	
}
