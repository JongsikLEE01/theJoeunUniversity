<%@page import="admin.DTO.Board"%>
<%@page import="admin.Service.BoardService"%>
<%@page import="admin.Service.BoardServiceImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 조회</title>
<link rel="stylesheet" href="../static/css/adminLogin.css">
</head>
<body>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	BoardService boardService = new BoardServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Board board = boardService.select(no);
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
			if (board != null) {
			%>
			<table>
				<tr>
					<th>제목</th>
					<td><%=board.getTitle()%></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=board.getWriter()%></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><%=board.getContent()%></td>
				</tr>
			</table>
			<div class="container-insertFt">
				<div class="insertBtn">
					<table>
						<tr>
							<td>
								<form action="<%=request.getContextPath()%>/board/boardlist.jsp"
									method="GET">
									<input type="submit" value="닫기" />
								</form>
							</td>
							<td>
								<form action="<%=request.getContextPath()%>/board/update.jsp?"
									method="post">
									<input type="hidden" name="no" value="<%=board.getNo()%>" /><input
										type="submit" value="수정" />
								</form>
							</td>
							<td>
								<form
									action="<%=request.getContextPath()%>/board/delete_pro.jsp"
									method="post">
									<input type="hidden" name="no" value="<%=board.getNo()%>" /> <input
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
			<h3>조회된 게시글이 없습니다.</h3>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>