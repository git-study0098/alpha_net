package com.last.login;

import java.sql.SQLException;

import com.last.vo.MemberVo;

public interface LoginDao {

	public String selectSearchId(String memberName, String email) throws SQLException;
	
	public String selectSearchPw(String memberId) throws SQLException;
	
	public MemberVo selectLogin(String memberId, String memberPw) throws SQLException;
	
	public int selectConfirmId(String memberId) throws SQLException;

	public int insertMember(MemberVo memberVo) throws SQLException;
	
}
