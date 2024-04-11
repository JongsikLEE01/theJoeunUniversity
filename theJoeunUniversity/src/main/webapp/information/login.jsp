<%@page import="java.net.URLDecoder"%>
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
<title>로그인</title>

<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />
<jsp:include page="/layout/informationLayout/loginlink.jsp" />
<style type="text/css">
header{ border-bottom: 1px solid white;}
footer{ border-top: 1px solid white;}
</style>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />


	<div class="container">
		<div class="loginbox" align="center">
			<form action="login_pro.jsp" method="post">

				<div>
					<input type="text" class="textlogin"
						name="studentId" value="" placeholder="학번을 입력해주세요">
				</div>
				<div>
					<input type="password" class="textlogin" name="birth"
						value="" placeholder="생일을 입력해주세요">
				</div>

				<div>
					<img id="loginlogo"
						src="<%=request.getContextPath()%>/information/img/squarelogo.png"
						alt="로고사진" style="height:220px;">
				</div>

				<div>
					<input type="submit" class="button" value="로그인">
				</div>
					<c:if test="${ param.msg == 0 }">
						<p class="errtext">학번 또는 생일이 일치하지 않아요</p>
					</c:if>


			</form>
		</div>
	</div>

	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />

	<!-- script -->
	<jsp:include page="/layout/script.jsp" />

	<!-- login.jsp 에서만 -->
	<script
		src="<%=request.getContextPath()%>/static/js/informationJs/login.js">
		
	</script>


</body>
</html>









