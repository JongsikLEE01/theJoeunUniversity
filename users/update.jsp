
<%@page import="admin.DTO.Users"%>
<%@page import="admin.Service.UserServiceImpl"%>
<%@page import="admin.Service.UserService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사정보 수정</title>
<link rel="stylesheet" href="../static/css/adminLogin.css">
</head>
<body>
	<%
	UserService userService = new UserServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Users user = userService.select(no);
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
		if (user != null) {
		%>
		<div class="u-u-body">
			<div class="u-u-item1">
				
				<!-- jsp 로 파일 업로드 처리 -->
				<form action="upload.jsp" method="post" enctype="multipart/form-data">
				<!-- Servlet 으로 파일 업로드 처리 -->
					<input type="file" name="file" multiple />
					<input type="submit" value="업로드" />
				</form>
			</div>
			<div class="u-u-item2">
		<div>
			<form action="<%=request.getContextPath()%>/users/update_pro.jsp" method="post">
				<input type="hidden" name="no" value="<%=user.getUno()%>" />
				<table>
					<tr>
				<th>이름</th>
				<td><input type="text" name="name" value="<%=user.getName()%>" /></td>
			</tr>
			<tr>
				<th>학번</th>
				<td><input type="text" name="studentid"
					value="<%=user.getStudentId()%>" /></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="text" name="birth"
					value="<%=user.getBirth()%>" /></td>
			</tr>
			<tr>
				<th>메일주소</th>
				<td><input type="text" name="mail" value="<%=user.getMail()%>" /></td>
			</tr>
			<tr>
				<th>재학상태</th>
				<td><input type="text" name="academicstatus"
					value="<%=user.getAcademicStatus()%>" /></td>
			</tr>
			<tr>
				<th>학과코드</th>
				<td><input type="text" name="dno" value="<%=user.getdNo()%>" />
				</td>
			</tr>
				</table>
				<div class="container-insertFt">
					<div>
						<input class="u-u-btn" type="submit" value="수정" />
					</div>
				</div>
			</form>
			<%
		} else {
		%>
		<h3>조회된 게시글이 없습니다.</h3>
		<%
		}
		%>
		</div>
			</div>
		</div>
	</div>	
</body>
</html>













