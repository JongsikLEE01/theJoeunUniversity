<%@page import="admin.DTO.Calendar"%>
<%@page import="admin.Service.CalendarServiceImpl"%>
<%@page import="admin.Service.CalendarService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사일정조회</title>
</head>
<body>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	CalendarService calendarService = new CalendarServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Calendar calendar = calendarService.select(no);
	%>
	<h1>학사일정조회</h1>
	<%
	if (calendar != null) {
	%>
	<table border="1">
		<tr>
			<th>시작일</th>
			<td><%=calendar.getStrDate()%></td>
		</tr>
		<tr>
			<th>종료일</th>
			<td><%=calendar.getEndDate()%></td>
		</tr>
		<tr>
			<th>일정내용</th>
			<td><%=calendar.getContent()%></td>
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
		<a href="<%=request.getContextPath()%>/calendar/calendarlist.jsp">
			닫기 </a> <a
			href="<%=request.getContextPath()%>/calendar/update.jsp?no=<%=no%>">
			수정 </a>
		<form action="<%=request.getContextPath()%>/calendar/delete_pro.jsp"
			method="post">
			<input type="hidden" name="no" value="<%=no%>" /> <input
				type="submit" value="삭제" />
		</form>

	</div>
</body>
</html>