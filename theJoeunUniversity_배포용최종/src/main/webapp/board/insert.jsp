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
			<form action="<%=request.getContextPath()%>/board/insert_pro.jsp">
				<table>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" value=""/></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="writer" value=""/></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea rows="5" cols="40" name="content"></textarea></td>
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













