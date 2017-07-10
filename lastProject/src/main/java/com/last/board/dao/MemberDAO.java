package com.last.board.dao;

import com.last.vo.MongoVO;

public interface MemberDAO{
	public void insert(MongoVO mongo);
	
	MongoVO getMongoVO(MongoVO mvo);
}