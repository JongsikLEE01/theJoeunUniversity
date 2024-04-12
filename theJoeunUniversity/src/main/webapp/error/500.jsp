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
<title>500 Error</title>
<!-- css -->
<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />
<link rel="icon" href="<%=root%>/static/img/icon.png">
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
	
    <div class="container">
		<div class="error">
			<div class="errortitle">
				<h1>500</h1>
			    <h3>Internal Server Error :(</h3>
			</div>
		    <img class="bono" src="<%=root%>/static/img/보노.png">
		    <div class="tear no1"></div>
		    <div class="tear no2"></div>
		    <div class="tear no3"></div>
	
		    <a class="errorBack" href="<%= root %>/main.jsp">돌아가기</a>
		</div>
	</div>	
    
    
    <!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />
</body>
</html>