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
<title>일정 수정</title>
</head>
<body>
	<%
	CalendarService calendarService = new CalendarServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Calendar calendar = calendarService.select(no);
	%>
	<h1>학사일정 수정</h1>
	<%
	if (calendar != null) {
	%>
	<form action="<%=request.getContextPath()%>/calendar/update_pro.jsp"
		method="post">
		<input type="hidden" name="no" value="<%=no%>" />
		<table border="1">
			<tr>
				<th>시작일</th>
				<td><input type="text" name="strdate"
					value="<%=calendar.getStrDate()%>" /></td>
			</tr>
			<tr>
				<th>종료일</th>
				<td><input type="text" name="enddate"
					value="<%=calendar.getEndDate()%>" /></td>
			</tr>
			<tr>
				<th>일정내용</th>
				<td><input type="text" name="content"
					value="<%=calendar.getContent()%>" /></td>
			</tr>
		</table>
		<input type="submit" value="수정" />
	</form>
	<%
	} else {
	%>
	<h3>조회된 일정이 없습니다.</h3>
	<%
	}
	%>

	<div>
		<a href="<%=request.getContextPath()%>/calendar/calendarlist.jsp">
			닫기 </a>
	</div>

</body>
</html>













