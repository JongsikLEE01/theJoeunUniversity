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

	<% if(calendar != null && calendar.getNo() > 0){ %>
	<div class="container">
		<span class="main">일정 조회</span>
			<!-- type를 hidden으로 설정하면 화면에 표시하지않고 값을 넘겨줄 수 있음 -->
			<input type="hidden" id="number" name="no" value="<%= calendar.getNo()%>">
			<p class="strDay">시작일 <span class="inputStrday"><%= calendar.getStrDate() %></span></p>
			<p class="endDay">종료일 <span class="inputStrday"><%= calendar.getEndDate() %></span></p>
			<p class="content">내용 <textarea class="inputTa" rows="5" cols="40" name="content" id="content" maxlength="500"><%= calendar.getContent() %></textarea> </p>
		<% }else{ %>
		<div class="flase">
			<h3>조회된 일정이 없습니다.</h3>
		</div>
		<% } %>
		<div class="list">
			<a class ="list_a" href="<%= request.getContextPath() %>/schedule/schedule.jsp">목록</a>
			<a class ="list_add" href="<%= request.getContextPath() %>/schedule/schedule_insert.jsp">추가</a>
			<a class ="list_update" href="<%= request.getContextPath() %>/schedule/schedule_update.jsp?no=<%= calendar.getNo() %>">수정</a>
			<a class ="list_remove" href="<%= request.getContextPath() %>/schedule/schedule_delete.jsp?no=<%= calendar.getNo() %>">삭제</a>
		</div>
	</div>
	
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp"/>

	<!-- 스크립트 -->
</body>
</html>