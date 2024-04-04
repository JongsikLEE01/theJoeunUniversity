<%@page import="information.DTO.Department"%>
<%@page import="information.DTO.Course"%>
<%@page import="information.DTO.Score"%>
<%@page import="information.DTO.Users"%>
<%@page import="information.Service.UserServiceImpl"%>
<%@page import="information.Service.UserService"%>
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
<jsp:include page="/layout/link.jsp" />
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
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
		
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />
	
</body>


</body>
</html>