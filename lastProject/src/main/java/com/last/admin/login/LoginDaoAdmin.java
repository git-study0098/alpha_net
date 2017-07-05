package com.last.admin.login;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.MemberVo;

public interface LoginDaoAdmin {

	public MemberVo selectLogin(String memberId, String memberPw) throws SQLException;
	
	public List<MemberVo> selectMemberList() throws SQLException;
	
	public List<MemberVo> selectMemberSearchList(String index, String key) throws SQLException;
	
}
