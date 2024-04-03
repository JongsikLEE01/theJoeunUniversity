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
	<h1>일정 추가</h1>
	<form action="<%= request.getContextPath() %>/schedule/schedule_insert_pro.jsp" method="post">
			<!-- type를 hidden으로 설정하면 화면에 표시하지않고 값을 넘겨줄 수 있음 -->
			<input type="hidden" name="no" value="">
			<table border="1">
				<tr>
					<th>시작일</th>
					<td>
						<input type="text" name="strDate" value="">
					</td>
				</tr>
				<tr>
					<th>종료일</th>
					<td>
						<input type="text" name="endDate" value="">
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea rows="5" cols="40" name="content">					
						</textarea>
					</td>
				</tr>
			</table>
		<input type="submit" value="등록"/>
	</form>
	<div>
		<a href="<%= request.getContextPath() %>/schedule/schedule.jsp">목록</a>
	</div>
	
	
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp"/>

	<!-- 스크립트 -->
</body>
</html>