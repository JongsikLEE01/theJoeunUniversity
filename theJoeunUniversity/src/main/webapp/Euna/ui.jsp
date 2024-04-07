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
<title>UI</title>
<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
	
	<h1 class="title">UI</h1>
	<div id="jwxe_main_content">
		<div class="article intro">
			<div class="cont_ui">
				<h2 class="list_cb ty2">캐릭터</h2>
				<div class="flex j-space-around">
					<div>
						<h3>기본형</h3>
						<div>
							<img class="box" src="<%=root%>/static/img/기본.png">
						</div>
					</div>
					<div>
						<h3>야구</h3>
						<div>
							<img class="box" src="<%=root%>/static/img/야구.png">
						</div>
					</div>
					<div>
						<h3>축구</h3>
						<div>
							<img class="box" src="<%=root%>/static/img/축구.png">
						</div>
					</div>
				</div>
				<div class="flex j-space-around">
					<div>
						<h3>럭비</h3>
						<div>
							<img class="box" src="<%=root%>/static/img/럭비.png">
						</div>
					</div>
					<div>
						<h3>농구</h3>
						<div>
							<img class="box" src="<%=root%>/static/img/농구.png">
						</div>
					</div>
					<div>
						<h3>아이스하키</h3>
						<div>
							<img class="box" src="<%=root%>/static/img/아이스하키.png">
						</div>
					</div>
				</div>
				<br><br><br>
				<h2 class="list_cb ty4" style="color: cornflowerblue;">엠블렘</h2>
				<div class="box">
					<img style="width: 300px;" height="300px" src="<%=root%>/static/img/짹짹.png" alt="엠블렘 이미지">
					<img style="width: 750px;" height="300px" src="<%=root%>/static/img/엠블렘.png" alt="엠블렘 색상표">
				</div>
			</div>
		</div>
	</div>

	
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />

</body>
</html>










