
<%@page import="admin.DTO.Board"%>
<%@page import="admin.Service.BoardServiceImpl"%>
<%@page import="admin.Service.BoardService"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항관리</title>
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
			BoardService boardService = new BoardServiceImpl();
			List<Board> boardList = boardService.list();
			if (user_id != null) {
			%>

	
			<table id="rwd-table">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일자</th>
					<th>수정일자</th>
				</tr>
				<%
				if (boardList == null || boardList.size() == 0) {
				%>
				<tr>
					<td colspan="5">조회된 게시글이 없습니다.</td>
				</tr>
				<%
				} else {
				for (Board board : boardList) {
				%>
				<tr>
					<td><%=board.getNo()%></td>
					<td><a
						href="<%=request.getContextPath()%>/board/read.jsp?no=<%=board.getNo()%>">
							<%=board.getTitle()%>
					</a></td>
					<td><%=board.getWriter()%></td>
					<td><%=board.getReg_date()%></td>
					<td><%=board.getUpd_date()%></td>
				</tr>
				<%
				}
				}
				%>
			</table>
			<div class="container-boardBottom">
				<div class="bottom-btn">
					<a href="<%=request.getContextPath()%>/board/insert.jsp">입력</a>
				</div>
			</div>
			<%
			} else {
			boardList = boardService.list();
			%>
			<div class="d-message"><img src="img/exclamcon.png" alt="exclamcon"><h1>잘못된 접근입니다.</h1></div>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>
