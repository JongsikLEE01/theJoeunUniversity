<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더조은 키오스크 관리페이지</title>
<link rel="stylesheet" href="static/css/adminLogin.css">
</head>
<body>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	%>
	<div class="container">
		<div class="container-head">
			<div class="item">
				<img src="static/img/adminLogo.png" alt="로고">
			</div>
			<div class="item">
				<p>
					THEJOEUN University Kiosk <br> Management System
				</p>
			</div>
		</div>
		<div class="container-menu">
			<div class="menu-card">
				<img src="static/img/admin_menuCard01.png" alt="카드메뉴"> <span><a
					style="color: #5d8dbf;" style="text-decoration:none;"
					href="<%=request.getContextPath()%>/board/boardlist.jsp">게시판<br>관리
				</a></span>
			</div>
			<div class="menu-card">
				<img src="static/img/admin_menuCard02.png" alt="카드메뉴"> <span><a
					style="color: #d8ad9d;"
					href="<%=request.getContextPath()%>/users/userslist.jsp">학사정보<br>관리
				</a></span>
			</div>
			<div class="menu-card">
				<img src="static/img/admin_menuCard03.png" alt="카드메뉴"> <span><a
					style="color: black;"
					href="<%=request.getContextPath()%>/calendar/calendarlist.jsp">학사일정<br>관리
				</a></span>
			</div>
		</div>
	</div>
</body>
</html>