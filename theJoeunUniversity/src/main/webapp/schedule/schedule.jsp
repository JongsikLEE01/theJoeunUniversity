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
	<title>학사 일정</title>
	<jsp:include page="/layout/link.jsp"/>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp"/>

	<!-- 컨텐츠 -->
	<div class="container">
		<h1>학사 일정</h1>
		<div class="choice">
			<button class="before"></button>
			<p>2024 학사 일정</p>
			<button class="next"></button>
		</div>
		<div class="month">
			<p>전체</p>
			<p>1월</p>
			<p>2월</p>
			<p>3월</p>
			<p>4월</p>
			<p>5월</p>
			<p>6월</p>
			<p>7월</p>
			<p>8월</p>
			<p>9월</p>
			<p>10월</p>
			<p>11월</p>
			<p>12월</p>
		</div>
		<div class="calendar">
			<!-- 달력 -->
		</div>
		<div class="info">
		</div>
	</div>
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp"/>

	<!-- 스크립트 -->
</body>
</html>