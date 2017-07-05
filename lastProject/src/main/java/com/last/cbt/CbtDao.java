package com.last.cbt;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.CbtVo;

public interface CbtDao {
	
	public List<CbtVo> selectCbtSearchList(String index, String key) throws SQLException;

	public List<CbtVo> selectCbtList(String first, String end) throws SQLException;
	
}
