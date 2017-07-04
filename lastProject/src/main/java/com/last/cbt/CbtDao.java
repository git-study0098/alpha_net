package com.last.cbt;

import java.sql.SQLException;
import java.util.List;

public interface CbtDao {

	public List<?> selectCbt(String first, String end) throws SQLException;
	
}
