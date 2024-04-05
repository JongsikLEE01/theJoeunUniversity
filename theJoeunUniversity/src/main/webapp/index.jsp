<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<!-- css -->
<jsp:include page="/layout/link.jsp" />
<link href="<%= request.getContextPath()%>/Euna/css/style.css" rel="stylesheet">

</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />

	<!-- 컨텐츠 -->
	<div class="container txt-center">	
		<div class="flex j-center">
			<figure class="figure1">
		        <figcaption>더조은 대학교</figcaption>
		            <img src="<%= root %>/static/img/대학로고.png" >
		    </figure>
		</div>
		    <div class="flex j-space-between">
		        <figure class="figure2">
		        <a href="<%= root %>/Euna/Info.jsp"><img src="<%= root %>/static/img/학교소개.png" ></a>
		            <figcaption>학교 소개</figcaption>
		        </figure>
		        <figure class="figure2">
		        	<a href="<%= root %>/information/login.jsp">
			            <img src="<%= root %>/static/img/학생정보.png" >
		        	</a>
		            <figcaption>학생 정보</figcaption>
		        </figure>
		    </div>
		    <div class="flex j-space-between">
		        <figure class="figure3">
		        	<a href="<%= root %>/board/list.jsp">
			            <img src="<%= root %>/static/img/공지사항.png" >	        	
		        	</a>
		            <figcaption>공지 사항</figcaption>
		        </figure>
		        <figure class="figure4">
		            <a href="<%= root %>/schedule/schedule_user.jsp">
						<!-- 이미지수정필요~ -->
		            	<img src="<%=root%>/static/img/커뮤니티.png" >
		            </a>
		            <figcaption>학사 일정</figcaption>
		        </figure>
		    </div>
	</div>
	
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />
</body>
</html>