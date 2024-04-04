<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>
	<h1>게시글 쓰기</h1>
	<form action="<%= request.getContextPath()%>/board/insert_pro.jsp">
	<!-- update.jsp table 태그 복사 -->
	<table border="1">
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="title" value="" />
				</td>
			</tr>	
			<tr>
				<th>작성자</th>
				<td>
					<input type="text" name="writer" value="" />
				</td>
			</tr>	
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="5" cols="40" name="content"></textarea>
				</td>
			</tr>	
		</table>
		<input type="submit" value="등록" />
	</form>

</body>
</html>