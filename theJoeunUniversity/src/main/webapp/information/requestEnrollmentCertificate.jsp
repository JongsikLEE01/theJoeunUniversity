<%@page import="kiosk.DTO.Department"%>
<%@page import="kiosk.DTO.Course"%>
<%@page import="kiosk.DTO.Score"%>
<%@page import="kiosk.DTO.Users"%>
<%@page import="kiosk.Service.UserServiceImpl"%>
<%@page import="kiosk.Service.UserService"%>
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
<title>재학 증명서</title>
</head>
<body>
	<%
		UserService userService = new UserServiceImpl();
		Users users = new Users();
		String studentId = (String) session.getAttribute("studentId");
		users.setStudentId(studentId);
		Users user = userService.Certificate(users);
	%>
	
	<body>
		<h1>재학 증명서</h1>
	<table border="1">
		<tr>
			<th>user번호</th>
			<th>학번</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>메일</th>
			<th>재적</th>
			
		</tr>
		<tr>
			<td><%=user.getNo()%></td>
			<td><%=user.getStudentId()%></td>
			<td><%=user.getName()%></td>
			<td><%=user.getBirth()%></td>
			<td><%=user.getMail()%></td>
			<td><%=user.getAcademicStatus()%></td>
		</tr>
		
	</table>
	
	<table border="1">
		<tr>
			<td><%=user.getDepartment().getMajorName()%></td>
			<td><%=user.getCourse().getSubjectName()%></td>
		</tr>		
	</table>
	<a href="<%= request.getContextPath() %>/index.jsp">로그아웃</a>
</body>


</body>
</html>