<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Management System</title>
<link rel="stylesheet" href="static/css/adminLogin.css">



</head>


<body>

	<!-- 전체영역 -->
	<div class="container">
		<form method="post" action="adminlist.jsp">
			<div class="login-wrap">
				<!-- 중첩박스 -->
				<div id="login">
					<div id="head-text">
						<p>교내 키오스크 관리 시스템 Ver 1.0</p>
					</div>
					<!-- 로고 -->
					<div class="login-logo">
						<img src="static/img/adminLogo.png" alt="로고">
					</div>
					<div class="mid-text">
						<p>
							로그인 <br>login
						</p>
					</div>
					<!-- 아이디 -->
					<div class="login-inputbox">
						<input style="font-family:initial;" type="text" name="id" placeholder="아이디를 입력해주세요">

					</div>
					<!-- 비밀번호 -->
					<div class="login-inputbox">
						<input style="font-family:initial;" id="index-pw" type="password" name="passwd" placeholder="비밀번호를 입력해주세요">
						<input type="submit" value="로그인">
					</div>
				</div>
			</div>
		</form>
	</div>

</body>


</html>