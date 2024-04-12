<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalTime"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();

	LocalTime now = LocalTime.now();
	DateTimeFormatter timeDtf = DateTimeFormatter.ofPattern("HH시 mm분 ss초");
	String fomatTime = now.format(timeDtf);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더조은대학교</title>
<!-- swiper 플러그인 -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<link rel="stylesheet" href="<%=root%>/static/css/style.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!-- swiper 플러그인 -->
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="<%=root%>/static/js/index.js"></script>
<!-- css -->
<jsp:include page="/layout/link.jsp" />
<link rel="icon" href="<%=root%>/static/img/icon.png">

</head>
<body>
	<!-- Slider main container -->
	<div class="first">
		<div id="time">
			<h2 class="time"><%=fomatTime %></h2>
		</div>

		<div class="swiper">
			<h1 class="click">화면을 터치해주세요!</h1>
			<!-- Additional required wrapper -->
			<div class="swiper-wrapper">
				<!-- Slides -->
				<!-- (.swiper-slide>img[src="../img/slide$$.jpg"])*10 -->
				<div class="swiper-slide">
					<a href="<%=root%>/main.jsp"><img class="swiper-slide"
						src="<%=root%>/static/img/slide_1.png" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="<%=root%>/main.jsp"><img class="swiper-slide"
						src="<%=root%>/static/img/slide_2.png" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="<%=root%>/main.jsp"><img class="swiper-slide"
						src="<%=root%>/static/img/slide_3.png" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="<%=root%>/main.jsp"><img class="swiper-slide"
						src="<%=root%>/static/img/slide_4.png" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="<%=root%>/main.jsp"><img class="swiper-slide"
						src="<%=root%>/static/img/slide_5.png" alt=""></a>
				</div>
			</div>
			<!-- If we need pagination (닷츠) -->
			<div class="swiper-pagination"></div>

		</div>

	</div>

	<script>
		function timeReload(){
			$("#time").load(window.location.href + " #time");
		}

		setInterval(timeReload, 1000);
	</script>
</body>
</html>