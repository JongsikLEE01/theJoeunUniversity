<%@page import="admin.DAO.BoardDAO"%>
<%@page import="admin.DTO.Board"%>
<%@page import="java.util.List"%>
<%@page import="admin.Service.BoardService"%>
<%@page import="admin.Service.BoardServiceImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<jsp:include page="/layout/link.jsp" />
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
	<div class="container">
		

	<%
		BoardService boardService = new BoardServiceImpl();
		List<Board> boardList = boardService.list();
	%>
	<h1>공지 사항</h1>
<!--
	<div class="searck">
		<div class="row">
			<form method="post" name="search" action="searchbbs.jsp">
				<table class="pull-right">
					<tr>
						<td><select class="form-control" name="searchField">
								<option value="0">선택</option>
								<option value="bbsTitle">제목</option>
								<option value="userID">작성자</option>
						</select></td>
						<td><input type="text" class="form-control"
							placeholder="검색어 입력" name="searchText" maxlength="100"></td>
						<td><button type="submit" class="btn btn-success">검색</button></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
	-->
	<a href="<%= request.getContextPath() %>/board/insert.jsp">글쓰기</a>
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일자</th>
			<th>수정일자</th>
		</tr>
		<% if( boardList == null || boardList.size() == 0 ) { %>
		<tr>
			<td colspan="5">조회된 게시글이 없습니다.</td>
		</tr>
		<% } else {
				for(Board board : boardList) {
		%>
					<tr>
						<td><%= board.getNo() %></td>
						<td>
							<a href="<%= request.getContextPath() %>/board/read.jsp?no=<%= board.getNo() %>" >
								<%= board.getTitle() %>
							</a>
						</td>
						<td><%= board.getWriter() %></td>
						<td><%= board.getReg_date() %></td>
						<td><%= board.getUpd_date() %></td>
					</tr>
		<%		}
			}
		%>
	</table>
</div>

<!-- 푸터 -->
<jsp:include page="/layout/footer.jsp"/>

<!-- 스크립트 -->
<jsp:include page="/layout/script.jsp"></jsp:include>
	
</body>
</html>