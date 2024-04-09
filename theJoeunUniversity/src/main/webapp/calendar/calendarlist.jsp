<%@page import="admin.DTO.Calendar"%>
<%@page import="admin.Service.CalendarServiceImpl"%>
<%@page import="admin.Service.CalendarService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사일정관리</title>
</head>
<body>
	<h1>학사일정관리</h1>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	CalendarService calendarService = new CalendarServiceImpl();
	List<Calendar> calendarList = calendarService.list();
	if (user_id != null) {
	%>

	<a href="<%=request.getContextPath()%>/calendar/insert.jsp">입력</a>

	<table border="1">
		<tr>
			<th>번호</th>
			<th>시작</th>
			<th>종료</th>
			<th>일정내용</th>
		</tr>
		<%
		if (calendarList == null || calendarList.size() == 0) {
		%>
		<tr>
			<td colspan="5">조회된 학생이 없습니다.</td>
		</tr>
		<%
		} else {
		for (Calendar calendar : calendarList) {
		%>
		<tr>

			<td><a
				href="<%=request.getContextPath()%>/calendar/read.jsp?no=<%=calendar.getNo()%>">
					<%=calendar.getNo()%>
			</a></td>
			<td><%=calendar.getStrDate()%></td>
			<td><%=calendar.getEndDate()%></td>
			<td><%=calendar.getContent()%></td>
		</tr>
		<%
		}
		}
		%>
	</table>


	<%
	} else {
	calendarList = calendarService.list();
	out.println("잘못된 접근입니다.?");
	}
	%>

	<a href="<%=request.getContextPath()%>/board/boardlist.jsp">공지사항관리</a>
	<a href="<%=request.getContextPath()%>/users/userslist.jsp">학사정보관리</a>
	<a href="<%=request.getContextPath()%>/calendar/calendarlist.jsp">학사일정관리</a>

</body>
</html>
