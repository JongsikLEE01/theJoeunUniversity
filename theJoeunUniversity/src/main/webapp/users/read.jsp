<%@page import="admin.DTO.Users"%>
<%@page import="admin.Service.UserServiceImpl"%>
<%@page import="admin.Service.UserService"%>
<%@page import="admin.DTO.Board"%>
<%@page import="admin.Service.BoardService"%>
<%@page import="admin.Service.BoardServiceImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보 조회</title>
</head>
<body>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	UserService userService = new UserServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Users user = userService.select(no);
	%>
	<h1>학생정보 조회</h1>
	<%
	if (user != null) {
	%>
	<table border="1">
		<tr>
			<th>학번</th>
			<td><%=user.getStudentId()%></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=user.getName()%></td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td><%=user.getBirth()%></td>
		</tr>
		<tr>
			<th>메일주소</th>
			<td><%=user.getMail()%></td>
		</tr>
		<tr>
			<th>재학상태</th>
			<td><%=user.getAcademicStatus()%></td>
		</tr>
		<tr>
			<th>학과번호</th>
			<td><%=user.getdNo()%></td>
		</tr>
	</table>
	<%
	} else {
	%>
	<h3>조회된 게시글이 없습니다.</h3>
	<%
	}
	%>

	<div>
		<a href="<%=request.getContextPath()%>/users/userslist.jsp"> 닫기
		</a> <a
			href="<%=request.getContextPath()%>/users/update.jsp?no=<%=user.getUno()%>">
			수정 </a>
		<form action="<%=request.getContextPath()%>/users/delete_pro.jsp"
			method="post">
			<input type="hidden" name="no" value="<%=user.getUno()%>" /> <input
				type="submit" value="삭제" />
		</form>

	</div>
</body>
</html>