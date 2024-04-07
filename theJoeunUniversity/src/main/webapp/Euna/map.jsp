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
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
	
	
	<h1 class="title">서울 캠퍼스</h1>
	<br><br><br>
	<div class="flex j-center">


		<img style="width: 50%; height: 50%;" alt="학교 약도입니다."
			src="<%=request.getContextPath()%>/static/img/약도.jpg">


	</div>

	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />


</body>
</html>










