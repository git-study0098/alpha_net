package com.last.common.dao;

import com.last.common.vo.MongoVO;

public interface MemberDAO{
	public void insert(MongoVO mongo);
	
	MongoVO getMongoVO(MongoVO mvo);
}