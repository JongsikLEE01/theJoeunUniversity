<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성공페이지</title>
<link rel="stylesheet" href="../static/css/adminLogin.css">
</head>
<body>
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
		<div class="u-s-msg">
			<h1>업로드 성공!!</h1>
			<form action="<%=request.getContextPath()%>/users/userslist.jsp"
				method="GET">
				<input type="submit" value="닫기" />
			</form>
		</div>
	</div>
</body>
</html>