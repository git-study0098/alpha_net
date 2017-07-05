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

	public List<StareVo> selectMemberStareHistoryList(String memberId, String stareCode) throws SQLException;
	
	public int insertStare(String memberId, StareVo stareVo) throws SQLException;
	
	public int updateMemberInfo(MemberVo memberVo) throws SQLException;
	
	public List<StareVo> selectResultStareList(String memberId, String stareCode) throws SQLException;
	
	public QualifiRestrictVo selectQualifiRestrictVo(String memberId) throws SQLException;
	
	public DocVo selectDocVo(String memberId) throws SQLException;
	
	public int insertDocVo(String memberId, DocVo dorVo) throws SQLException;
	
	public List<PaperVo> selectMemberPaperHistoryList(String memberId, String paperCode) throws SQLException;
	
	public List<QualifiVo> selectMemberQualifiHistoryList(String memberId, String qualifiCode) throws SQLException;
	
	public List<DocVo> selectQualifiDocList(String memberId, String qualifiCode) throws SQLException;
	
	public List<ExamVo> selectExemptionExamList(String memberId, String stareCode) throws SQLException;

	public List<SubjectVo> selectExemptionSubjectList(String memberId, String stareCode) throws SQLException;
	
	
}
