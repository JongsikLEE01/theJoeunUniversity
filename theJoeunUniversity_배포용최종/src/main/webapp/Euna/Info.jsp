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
<title>더조은대학교 소개</title>
<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />

<!-- Fontawesome 아이콘 라이브러리 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<script src="https://kit.fontawesome.com/e1baf9e274.js" crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<!-- 헤더 -->
		<jsp:include page="/layout/header.jsp" />
	</header>

	<div class="container">
		<div class="con1 flex j-space-around">
			<figure class="figure1">
				<a href="<%=root%>/Euna/history.jsp">
					<button class="btn">
						<i id="fa_1" class="fas fa-graduation-cap"></i>
					</button>
				</a>
				<figcaption>학교 이념</figcaption>
			</figure>
			<figure class="figure2">
				<a href="<%=root%>/Euna/state.jsp">
					<button class="btn">
						<i id="fa_2" class="fas fa-university"></i>
					</button>
				</a>
				<figcaption>학교 현황</figcaption>
			</figure>
		</div>
		<div class="con2 flex j-space-between">
			<figure class="figure2">
				<a href="<%=root%>/Euna/gomap.jsp">
					<button class="btn">
						<i id="fa_3" class="fas fa-map-marked-alt"></i>
					</button>
				</a>
				<figcaption>주변 위치</figcaption>
			</figure>
			<figure class="figure3">
				<a href="<%=root%>/Euna/map.jsp">
					<button class="btn">
						<i id="fa_4" class="fas fa-map"></i>
					</button>
				</a>
				<figcaption>대학 약도</figcaption>
			</figure>
			<figure class="figure4">
				<a href="<%=root%>/Euna/ui.jsp">
					<button class="btn">
						<i id="fa_5" class="fa-solid fa-dove"></i>
						
					</button>
				</a>
				<figcaption>상징(UI)</figcaption>
			</figure>
		</div>

	</div>

	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />
</body>
</html>