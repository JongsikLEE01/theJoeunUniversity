<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더조은 키오스크 관리페이지</title>
</head>
<body>
	<h1>관리자님 환영합니다.</h1>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	%>
	<a href="<%=request.getContextPath()%>/board/boardlist.jsp">공지 사항 관리</a>
	<a href="<%=request.getContextPath()%>/users/userslist.jsp">학생 정보 관리</a>
	<a href="<%=request.getContextPath()%>/schedule/schedule.jsp">학사 일정 관리</a>
</body>
</html>