<%@page import="board.DAO.BoardDAO"%>
<%@page import="admin.DTO.Board"%>
<%@page import="java.util.List"%>
<%@page import="board.Service.BoardService"%>
<%@page import="board.Service.BoardServiceImpl"%>
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

<link rel="stylesheet" href="css/Noticestyles.css">

<jsp:include page="/layout/link.jsp" />
</head>
<body>

	<div class="container" >
		<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
		
	<%
		String title = request.getParameter("title");
		title = title == null ? "" : title;
		BoardService boardService = new BoardServiceImpl();
		List<Board> boardList = null;
		
		// 검색
		if( title != null && !title.equals("") ) {
			boardList = boardService.search(title);
		}
		// 전체 목록
		else {
			boardList = boardService.list();
		}
			
			
	//	List<Board> searchList = boardService.searchList();
	%>

	<div class="search">
		<div class="row">
			<form method="get" name="search" action="list.jsp">
				<table class="pull-right">
					<tr>
						<td><input type="text" class="form-control"
							placeholder="제목 키워드 입력" name="title" maxlength="100" value="<%= title %>">
							</td>
						<td><button type="submit" class="searchbtn" >검색</button></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
	
		<table class="Ntable" style="height: 40px">
			<tr class="InnerHeader">
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
							<a href="<%= request.getContextPath() %>/board/BeRead.jsp?no=<%= board.getNo() %>" >
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
	


<!-- 푸터 -->
<jsp:include page="/layout/footer.jsp" />
</div>

<!-- 배너 -->
<jsp:include page="/layout/mainLink.jsp" />

<!-- 스크립트 -->
<jsp:include page="/layout/script.jsp"></jsp:include>
	
</body>
</html>