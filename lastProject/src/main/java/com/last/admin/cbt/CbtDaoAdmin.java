package com.last.admin.cbt;

import java.sql.SQLException;
import java.util.List;

import com.last.vo.CbtVo;

/**
 * 
 * @author kimjae
 * RUD, search select, first~end select
 *
 */
public interface CbtDaoAdmin {
	
	public List<CbtVo> selectCbtSearchList(String index, String key) throws SQLException;

	public List<CbtVo> selectCbtList(String first, String end) throws SQLException;
	
	public int insertCbt(CbtVo cbtVo) throws SQLException;
	
	public int updateCbt(CbtVo cbtVo) throws SQLException;
	
	public int deleteCbt(String cbtCode) throws SQLException;
	
}
