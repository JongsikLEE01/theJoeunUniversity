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
</head>
<body>
	<div class="container txt-center">
		<h1 class="title">더조은 대학교</h1>
		<h2 class="title">학교 소개</h2>
		<br><br><br>

		<div class="flex j-space-around">
			<figure class="figure1">
				<a href="<%= root %>/history.jsp"><img src="<%=root%>/static/img/학교이념.png"></a>
				<figcaption>학교 이념</figcaption>
			</figure>
			<figure class="figure2">
				<a href="<%= root %>/state.jsp"><img src="<%=root%>/static/img/학교현황.png"></a>
				<figcaption>학교 현황</figcaption>
			</figure>
		</div>
		<div class="flex j-space-between">
			<figure class="figure2">
				<a href="<%= root %>/gomap.jsp"><img src="<%=root%>/static/img/오시는길.png"></a>
				<figcaption>오시는 길</figcaption>
			</figure>
			<figure class="figure3">
				<a href="<%= root %>/map.jsp"><img src="<%=root%>/static/img/대학약도.png"></a>
				<figcaption>대학 약도</figcaption>
			</figure>
			<figure class="figure4">
				<a href="<%= root %>/ui.jsp"><img src="<%=root%>/static/img/상징.png"></a>
				<figcaption>상징(UI)</figcaption>
			</figure>
		</div>

	</div>


</body>
</html>