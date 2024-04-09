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
<title>학사일정 수정</title>
<link rel="stylesheet" href="../static/css/adminLogin.css">
</head>
<body>
	<%
	CalendarService calendarService = new CalendarServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Calendar calendar = calendarService.select(no);
	%>
	<div class="container">
		<div class="container-head">
			<div class="item">
				<img src="../static/img/adminLogo.png" alt="로고">
			</div>
			<div class="item">
				<p>
					THEJOEUN University Kiosk <br> Management System
				</p>
			</div>
		</div>
		<%
		if (calendar != null) {
		%>
		<div class="container-insertForm">
			<form action="<%=request.getContextPath()%>/calendar/update_pro.jsp" method="post">
				<input type="hidden" name="no" value="<%=no%>" />
				<table>
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
				<div class="container-insertFt">
					<div class="insertBtn">
						<input type="submit" value="수정" />
					</div>
				</div>
			</form>
			<%
		} else {
		%>
		<h3>조회된 일정이 없습니다.</h3>
		<%
		}
		%>
		</div>
	</div>	
</body>
</html>













