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
<title>학사정보 조회</title>
<link rel="stylesheet" href="../static/css/adminLogin.css">
</head>
<body>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
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
		<div class="container-insertForm">
			<%
			if (user != null) {
			%>
			<div class="u-r-item">
				<div class="sub-item">
					<img src="img/user1.png" alt="그림">
					<div class="sub-item-txt">학과 코드</div>
					<div class="sub-item-txt">1 : 컴퓨터 공학</div>
					<div class="sub-item-txt">2 : 전기 공학</div>
					<div class="sub-item-txt">3 : 화학 공학</div>
				</div>
			<table>
				<tr>
			<th>학번</th>
			<td><%=user.getStudentId()%></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=user.getName()%></td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td><%=user.getBirth()%></td>
		</tr>
		<tr>
			<th>메일주소</th>
			<td><%=user.getMail()%></td>
		</tr>
		<tr>
			<th>재학상태</th>
			<td><%=user.getAcademicStatus()%></td>
		</tr>
		<tr>
			<th>학과번호</th>
			<td><%=user.getdNo()%></td>
		</tr>
			</table>
			</div>
			<div class="container-insertFt">
				<div class="insertBtn">
					<table>
						<tr>
							<td>
								<form action="<%=request.getContextPath()%>/users/userslist.jsp"
									method="GET">
									<input type="submit" value="닫기" />
								</form>
							</td>
							<td>
								<form action="<%=request.getContextPath()%>/users/update.jsp?"
									method="post">
									<input type="hidden" name="no" value="<%=user.getUno()%>" /><input
										type="submit" value="수정" />
								</form>
							</td>
							<td>
								<form
									action="<%=request.getContextPath()%>/users/delete_pro.jsp"
									method="post">
									<input type="hidden" name="no" value="<%=user.getUno()%>" /> <input
										type="submit" value="삭제" />
								</form>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<%
			} else {
			%>
			<h3>조회된 정보가 없습니다.</h3>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>