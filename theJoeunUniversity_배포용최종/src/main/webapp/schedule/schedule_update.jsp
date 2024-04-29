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
		Calendar cal = calendarService.select(no);
	%>
	<% if(cal != null && cal.getNo() > 0){ %>
	<div class="container">
		<form name="form" onsubmit="return checkDate()" action="<%= request.getContextPath() %>/schedule/schedule_update_pro.jsp" method="post">
			<span class="main">일정 수정</span>
			<!-- type를 hidden으로 설정하면 화면에 표시하지않고 값을 넘겨줄 수 있음 -->
			<input type="hidden" id="number" name="no" value="<%= cal.getNo()%>">
			<p class="strDay">시작일 <input class="inputStrday" type="text" name="strDate" id="strDate" maxlength="10" size="10" value="<%= cal.getStrDate() %>"></p>
			<p class="endDay">종료일 <input class="inputEndday" type="text" name="endDate" id="endDate" maxlength="10" size="10" value="<%= cal.getEndDate() %>"></p>
			<p class="content">내용 <textarea class="inputTa" rows="5" cols="40" name="content" id="content" maxlength="500"><%= cal.getContent() %></textarea> </p>
			<input class="submit" type="submit" value="수정"/>
		</form>
		<% }else{ %>
			<div class="flase">
				<span>조회된 일정이 없습니다.</span>
			</div>
		<% } %>
		<div class ="list">
			<a class ="list_a" href="<%= request.getContextPath() %>/schedule/schedule.jsp">목록</a>
		</div>
	</div>
	
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp"/>

	<!-- 스크립트 -->
	<script src="<%= request.getContextPath()%>/static/js/schedule.js"></script>
</body>
</html>