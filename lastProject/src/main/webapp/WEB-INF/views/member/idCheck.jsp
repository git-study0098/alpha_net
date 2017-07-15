<%@page import="com.last.common.vo.MemberVo"%>
<%@page import="org.apache.poi.ss.formula.ptg.MemErrPtg"%>
<%@page import="com.last.common.dao.MemberDAO"%>
<%@page import="com.last.common.dao.MemberDAOImpl"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%
 
 SqlMapClient sqlMap = MemberDAO.getSqlMapInstance();


 String id  = (String)request.getAttribute("id");
 System.out.println(id+"아이디체크");
 
 String memId = (String)sqlMap.queryForObject("selectMemberId" , id);
 
 if(memId.equals("")){
 System.out.println(memId+"멤버vo");
%>
	{
		"Status" : "ok",
		"id"  : "<%=id%>"
	
	}
	
<% }else { %>

		{
		"Status" : "NO",
		"id" : "<%=id%>"
		
		}   
<%
  }
 %>
 