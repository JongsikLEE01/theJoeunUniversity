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
</head>
<body>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");

	out.println("설정된 세션 속성 값 [1] - user_id : " + user_id + "<br>");
	out.println("설정된 세션 속성 값 [2] - user_pw : " + user_pw + "<br>");
	%>



	<%
	BoardService boardService = new BoardServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Board board = boardService.select(no);
	%>
	<h1>게시글 조회</h1>
	<%
	if (board != null) {
	%>
	<table border="1">
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
	<%
	} else {
	%>
	<h3>조회된 게시글이 없습니다.</h3>
	<%
	}
	%>

	<div>
		<a href="<%=request.getContextPath()%>/board/boardlist.jsp"> 닫기
		</a> <a
			href="<%=request.getContextPath()%>/board/update.jsp?no=<%=board.getNo()%>">
			수정 </a>
		<form action="<%=request.getContextPath()%>/board/delete_pro.jsp"
			method="post">
			<input type="hidden" name="no" value="<%=board.getNo()%>" /> <input
				type="submit" value="삭제" />
		</form>

	</div>
</body>
</html>