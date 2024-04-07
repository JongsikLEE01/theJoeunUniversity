
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
</head>
<body>
	<h1>공지사항관리</h1>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	BoardService boardService = new BoardServiceImpl();
	List<Board> boardList = boardService.list();
	if (user_id != null) {
	%>

	<a href="<%=request.getContextPath()%>/board/insert.jsp">입력</a>

	<table border="1">
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


	<%
	} else {
	boardList = boardService.list();
	out.println("잘못된 접근입니다.?");
	}
	%>

	<a href="<%=request.getContextPath()%>/board/boardlist.jsp">공지사항관리</a>
	<a href="<%=request.getContextPath()%>/users/userslist.jsp">학사정보관리</a>
	<a href="<%=request.getContextPath()%>/calendar/calendarlist.jsp">학사일정관리</a>


</body>
</html>
