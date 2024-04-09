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

<link rel="stylesheet" href="css/BeRead.css">

</head>
<body>

	<%
	BoardService boardService = new BoardServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Board board = boardService.select(no);
	%>
	
	<header class="Header">
	더조은 대학교
	</header>
	
	<h1>게시글 조회</h1>
	<%
	if (board != null) {
	%>
	
	<p class="reg_date">등록시간: <%= board.getReg_date() %></p>
	<p class="upd_date">수정시간: <%= board.getUpd_date() %></p>
	<table class="Table"> <!-- border="1" -->
		<tr>
			<th class="Title">제목</th>
			<td class="Title_sub"><%=board.getTitle()%></td>
		</tr>
		<tr>
			<th class="Writer">작성자</th>
			<td class="Writer_sub"><%=board.getWriter()%></td>
		</tr>
		<tr>
			<td class="Content_sub" colspan="2" valign="top"><%=board.getContent()%></td>
		</tr>
	</table>
	
	<%
	} else {
	%>
	<h3>조회된 게시글이 없습니다.</h3>
	<%
	}
	%>
	
	<a href="http://localhost:8080/theJoeunUniversity/board/list.jsp">
		<img src="img/Back.png" alt="돌아가기">
	</a>
	
	<div class="Footer"></div>


</body>
</html>