<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
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
		<div class="container-insertForm">
			<form action="<%=request.getContextPath()%>/users/insert_pro.jsp">
				<table>
					<tr>
					<th>학번</th>
					<td><input type="text" name="studentid" value="" /></td>
					</tr>
					<tr>
						<th>성명</th>
						<td><input type="text" name="name" value="" /></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="text" name="birth" value="" /></td>
					</tr>
					<tr>
						<th>메일주소</th>
						<td><input type="text" name="mail" value="" /></td>
					</tr>
					<tr>
						<th>재학구분</th>
						<td><input type="text" name="academicstatus" value="" /></td>
					</tr>
					<tr>
						<th>학과</th>
						<td><input type="text" name="dno" value="" /></td>
					</tr>
				</table>
				<div class="container-insertFt">
					<div class="insertBtn">
						<input type="submit" value="등록" />
					</div>
				</div>
			</form>
		</div>
	</div>	
</body>
</html>













