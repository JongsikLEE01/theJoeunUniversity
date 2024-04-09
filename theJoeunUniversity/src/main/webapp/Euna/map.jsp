<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더조은 약도</title>

<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />
</head>
<body>
	<header>
		<!-- 헤더 -->
		<jsp:include page="/layout/header.jsp" />
	</header>

	<div class="container">
		<p class="title m">서울 캠퍼스</p>

		<div class="flex j-center">


			<img class="map" alt="학교 약도입니다."
				src="<%=request.getContextPath()%>/static/img/약도.jpg">


		</div>
	</div>
	<footer>
		<!-- 푸터 -->
		<jsp:include page="/layout/footer.jsp" />
	</footer>
</body>
</html>