<%@page import="admin.DTO.Users"%>
<%@page import="admin.Service.UserServiceImpl"%>
<%@page import="admin.Service.UserService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사정보관리</title>
</head>
<body>
	<h1>학사정보관리</h1>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	UserService userService = new UserServiceImpl();
	List<Users> userList = userService.list();
	if (user_id != null) {
	%>

	<a href="<%=request.getContextPath()%>/users/insert.jsp">입력</a>

	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>학번</th>
			<th>생년월일</th>
			<th>재학상태</th>
			<th>학과번호</th>
		</tr>
		<%
		if (userList == null || userList.size() == 0) {
		%>
		<tr>
			<td colspan="5">조회된 학생이 없습니다.</td>
		</tr>
		<%
		} else {
		for (Users user : userList) {
		%>
		<tr>
			<td><%=user.getUno()%></td>
			<td><a
				href="<%=request.getContextPath()%>/users/read.jsp?no=<%=user.getUno()%>">
					<%=user.getName()%>
			</a></td>
			<td><%=user.getStudentId()%></td>
			<td><%=user.getBirth()%></td>
			<td><%=user.getAcademicStatus()%></td>
			<td><%=user.getdNo()%></td>
		</tr>
		<%
		}
		}
		%>
	</table>


	<%
	} else {
	userList = userService.list();
	out.println("잘못된 접근입니다.?");
	}
	%>

	<a href="<%=request.getContextPath()%>/board/boardlist.jsp">공지사항관리</a>
	<a href="<%=request.getContextPath()%>/users/userslist.jsp">학사정보관리</a>
	<a href="<%=request.getContextPath()%>/calendar/calendarlist.jsp">학사일정관리</a>

</body>
</html>
