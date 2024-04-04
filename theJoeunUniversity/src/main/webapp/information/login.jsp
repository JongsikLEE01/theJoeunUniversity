<%@page import="java.net.URLDecoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

</head>
<body>

	<h1>로그인</h1>
	<form action="login_pro.jsp" method="post">
		<p>
			학 번 : <input type="text" name="studentId" value="">
		</p>
		<p>
			생년월일 : <input type="password" name="birth" value="">
		</p>

		<c:if test="${ param.msg == 0 }">
			<p style="color: red;">아이디 또는 비밀번호가 일치하지 않습니다.</p>
		</c:if>

		<p>
			<input type="submit" value="로그인">
		</p>
	</form>
</body>
</html>









