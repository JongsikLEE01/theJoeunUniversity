<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
	
	<div class="container txt-center">
		<h1 class="title">더조은 대학교</h1>
		<h2 class="title">커뮤니티</h2>
		<br><br><br>

		<div class="flex j-space-around">
			<figure class="figure1">
				<a href="<%= root %>/취업.jsp"><img src="<%=root%>/static/img/취업.png"></a>
				<figcaption>취업</figcaption>
			</figure>
			<figure class="figure2">
				<a href="<%= root %>/학사일정.jsp"><img src="<%=root%>/static/img/학사일정.png"></a>
				<figcaption>학사 일정</figcaption>
			</figure>
		</div>
	</div>

	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />
</body>
</html>