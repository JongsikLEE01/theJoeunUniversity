<%@page import="admin.DTO.Board"%>
<%@page import="board.Service.BoardService"%>
<%@page import="board.Service.BoardServiceImpl"%>
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

<jsp:include page="/layout/link.jsp" />
<link rel="stylesheet" href="css/BeRead.css">
</head>
<body>
	

	<%
	BoardService boardService = new BoardServiceImpl();
	int no = Integer.parseInt(request.getParameter("no"));
	Board board = boardService.select(no);
	%>
	
	
	
	<%
	if (board != null) {
	%>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
	
<div class="container">
	<div >
	
	
	<div class="time">
		<p >등록시간: <%= board.getReg_date() %></p>
		<p>수정시간: <%= board.getUpd_date() %></p>
	</div>
	<table class="anc" > <!-- border="1" -->
		<tr>
			<th class="ancTitle">제목</th>
			<td><%=board.getTitle()%></td>
		</tr>
		<tr>
			<th class="ancWriter">작성자</th>
			<td ><%=board.getWriter()%></td>
		</tr>
		<tr>
			<td class="ContentSub" colspan="2" valign="top"><pre class="Read">${itemDetail.itemcontent }<%=board.getContent()%></pre></td>
		</tr>
	</table>
	
	<%
	} else {
	%>
	<h3>조회된 게시글이 없습니다.</h3>
	<%
	}
	%>
	
	</div>


</div>
			<!-- 푸터&배너 -->
			<jsp:include page="/layout/footer.jsp" />
		
		
		<!-- 공유양식 -->
  <jsp:include page="/layout/mainLink.jsp" /> 
<!-- 스크립트 -->
<jsp:include page="/layout/script.jsp"></jsp:include>

</body>
</html>