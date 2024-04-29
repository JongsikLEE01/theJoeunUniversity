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
<link rel="stylesheet" href="../static/css/adminLogin.css">
</head>
<body>
	<div class="container">
		<div class="container-head">
			<div class="head-left">
				<div class="item">
					<img src="../static/img/adminLogo.png" alt="로고">
				</div>
				<div class="item">
					<p>
						THEJOEUN University Kiosk <br> Management System
					</p>
				</div>
			</div>
			<div class="head-right">
				<div class="admin-directBtn">
					<span><a
					style="color: #5d8dbf;" style="text-decoration:none;"
					href="<%=request.getContextPath()%>/board/boardlist.jsp">게시글 관리</a></span>
				</div>
				<div class="admin-directBtn">
					<span><a
					style="color: #d8ad9d;"
					href="<%=request.getContextPath()%>/users/userslist.jsp">학사정보 관리</a></span>
				</div>
				<div class="admin-directBtn">
					<span><a
					style="color: black;"
					href="<%=request.getContextPath()%>/calendar/calendarlist.jsp">학사일정 관리</a></span>
				</div>
			</div>
		</div>

		<div class="container-board">
			<%
			String user_id = (String) session.getAttribute("userID");
			String user_pw = (String) session.getAttribute("userPW");
			CalendarService calendarService = new CalendarServiceImpl();
			List<Calendar> calendarList = calendarService.list();
			if (user_id != null) {
			%>

	
			<table id="rwd-table">
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
					<td colspan="5">조회된 일정이 없습니다.</td>
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
			<div class="container-boardBottom">
				<div class="bottom-btn">
					<a href="<%=request.getContextPath()%>/calendar/insert.jsp">입력</a>
				</div>
			</div>
			<%
			} else {
			calendarList = calendarService.list();
			%>
			<div class="d-message"><img src="img/exclamcon.png" alt="exclamcon"><h1>잘못된 접근입니다.</h1></div>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>
