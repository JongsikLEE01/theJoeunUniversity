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
<title>성적 증명서</title>
</head>
<body>
	<%
		UserService userService = new UserServiceImpl();
		Users users = new Users();
		
		String studentId = (String) session.getAttribute("studentId");
		users.setStudentId(studentId);
		Users user = userService.Transcript(users);
		
	%>
	
	<body>
	
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
		<% for (Score score : user.getScoreList()) { %>
		<tr>
            <td><%=score.getSubjectScore()%></td>
            <td><%=score.getInputDate()%></td>
            <td><%=score.getUpdDate()%></td>
            <td><%=score.getType()%></td>
        </tr>
        <% } %>
        <%-- 여러 개의 Course 객체가 있는 경우를 고려하여 반복문으로 출력 --%>
        <% for (Course course : user.getCourseList()) { %>
        <tr>
            <td><%=course.getCourseCode()%></td>
            <td><%=course.getSubjectName()%></td>
        </tr>
        <% } %>
        </tr>
		
	</table>
	
</body>


</body>
</html>