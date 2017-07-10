package com.last.common;

import com.ibatis.sqlmap.client.SqlMapClient;

public class CommonDao {
	
	private SqlMapClient client;

	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	
}
