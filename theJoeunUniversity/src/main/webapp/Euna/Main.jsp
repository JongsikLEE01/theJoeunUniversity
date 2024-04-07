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
<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />
</head>
<body>

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
		            <img src="<%= root %>/static/img/학생정보.png" >
		            <figcaption>학생 정보</figcaption>
		        </figure>
		    </div>
		    <div class="flex j-space-between">
		        <figure class="figure3">
		            <img src="<%= root %>/static/img/공지사항.png" >
		            <figcaption>공지사항</figcaption>
		        </figure>
		        <figure class="figure4">
		            <a href="<%= root %>/Community.jsp"><img src="<%=root%>/static/img/커뮤니티.png" ></a>
		            <figcaption>커뮤니티</figcaption>
		        </figure>
		    </div>

	</div>

</body>
</html>