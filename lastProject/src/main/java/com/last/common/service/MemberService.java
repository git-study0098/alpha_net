package com.last.common.service;

import java.sql.SQLException;

import com.last.common.dao.MemberDAO;
import com.last.common.vo.MemberVo;

public class MemberService {

	private MemberDAO memDao;

	public void setMemDao(MemberDAO memDao) {
		this.memDao = memDao;
	}
	
	public int insertMember(MemberVo vo) throws SQLException{
		
		int result=memDao.insert(vo);
		
		return result;
	
	}
}
