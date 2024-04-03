<%@page import="Calendar.DTO.Calendar"%>
<%@page import="Calendar.Service.CalendarServiceImpl"%>
<%@page import="Calendar.Service.CalendarService"%>
<%@page import="Calendar.MyCalendar"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>학사 일정 관리</title>
	<jsp:include page="/layout/link.jsp"/>
	<link href="<%= request.getContextPath()%>/schedule/css/style.css" rel="stylesheet">
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp"/>

	<!-- 컨텐츠 -->
	<%
		CalendarService calendarService = new CalendarServiceImpl();
		int no = Integer.parseInt(request.getParameter("no"));
		Calendar calendar = calendarService.select(no);
	%>
	<h1>게시글 조회</h1>
	<% if(calendar != null && calendar.getNo() > 0){ %>
	<table border="1">
		<tr>
			<th>시작일</th>
			<td><%= calendar.getStrDate() %></td>
		</tr>
		<tr>
			<th>종료일</th>
			<td><%= calendar.getEndDate()%></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><%= calendar.getContent() %></td>
		</tr>
	</table>
	<% }else{ %>
		<h3>조회된 일정이 없습니다.</h3>
	<% } %>
	<div>
		<a href="<%= request.getContextPath() %>/schedule/schedule.jsp">목록</a>
		<a href="<%= request.getContextPath() %>/schedule/schedule_update.jsp?no=<%= calendar.getNo() %>">수정</a>
		<a href="<%= request.getContextPath() %>/schedule/schedule_delete.jsp?no=<%= calendar.getNo() %>">삭제</a>
	</div>
	
	
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp"/>

	<!-- 스크립트 -->
</body>
</html>