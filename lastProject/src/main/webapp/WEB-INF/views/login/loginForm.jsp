<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<form action="<c:url value='/login'/>" method="post">
		<table>
			<tr>
				<td>로그인</td>
			</tr>
			<tr>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<td><input type="password" name="pwd" /></td>
			</tr>
		</table>
		<button>login</button>
	</form>
	
</body>
</html>