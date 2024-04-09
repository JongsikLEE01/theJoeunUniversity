<%@page import="admin.DTO.Board"%>
<%@page import="admin.Service.BoardServiceImpl"%>
<%@page import="admin.Service.BoardService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<%
	BoardService boardService = new BoardServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Board board = boardService.select(no);
	%>
	<h1>게시글 수정</h1>
	<%
	if (board != null) {
	%>
	<form action="<%=request.getContextPath()%>/board/update_pro.jsp"
		method="post">
		<input type="hidden" name="no" value="<%=board.getNo()%>" />
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title"
					value="<%=board.getTitle()%>" /></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer"
					value="<%=board.getWriter()%>" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="5" cols="40" name="content">
			<%=board.getContent()%>
			</textarea></td>
			</tr>
		</table>
		<input type="submit" value="수정" />
	</form>
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
	</div>

</body>
</html>













