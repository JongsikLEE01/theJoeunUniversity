<%@page import="admin.DTO.Users"%>
<%@page import="admin.Service.UserServiceImpl"%>
<%@page import="admin.Service.UserService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<%
	UserService userService = new UserServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Users user = userService.select(no);
	%>
	<h1>게시글 수정</h1>
	<%
	if (user != null) {
	%>
	<form action="<%=request.getContextPath()%>/users/update_pro.jsp"
		method="post">
		<input type="hidden" name="no" value="<%=user.getUno()%>" />
		<table border="1">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" value="<%=user.getName()%>" /></td>
			</tr>
			<tr>
				<th>학번</th>
				<td><input type="text" name="studentid"
					value="<%=user.getStudentId()%>" /></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="text" name="birth"
					value="<%=user.getBirth()%>" /></td>
			</tr>
			<tr>
				<th>메일주소</th>
				<td><input type="text" name="mail" value="<%=user.getMail()%>" /></td>
			</tr>
			<tr>
				<th>재학상태</th>
				<td><input type="text" name="academicstatus"
					value="<%=user.getAcademicStatus()%>" /></td>
			</tr>
			<tr>
				<th>학과코드</th>
				<td><input type="text" name="dno" value="<%=user.getdNo()%>" />
				</td>
			</tr>
		</table>
		<input type="submit" value="수정" />
	</form>
	<%
	} else {
	%>
	<h3>조회된 게시글이 없습니다.</h3>
	<%
	}
	%>

	<div>
		<a href="<%=request.getContextPath()%>/users/userslist.jsp"> 닫기 </a>
	</div>

</body>
</html>













