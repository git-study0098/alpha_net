<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	session.invalidate();
	response.sendRedirect("main");
%>
<!-- <script> -->
<!--  alert("로그아웃 완료"); -->
<!--  location.href='login'; -->
<!-- </script> -->