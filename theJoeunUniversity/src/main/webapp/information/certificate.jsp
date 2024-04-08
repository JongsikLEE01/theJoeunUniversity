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
<title>증명서 발행 페이지</title>
	
<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
	
	<!-- 컨텐츠 -->
	<div class="container">
		
	
		<!-- 로그인 시 -->
			<h5>${ sessionScope.Name } 님 환영합니다.</h5>
			<h5>${sessionScope.studentId} </h5>
		<form action="requestTranscript.jsp" method="post">
			<p><input type="submit" value=" 성적 증명서 발행 "></p>
			
		</form>
		
		<c:choose>
	    	<c:when test="${sessionScope.academicStatus eq 'Enrollment'}">
	        	<form action="requestEnrollmentCertificate.jsp">
					<p><input type="submit" value=" 재학 증명서 발행 "></p>
				</form>
	        	<p>당신은 현재 재학 중입니다.</p>
		    </c:when>
		    <c:when test="${sessionScope.academicStatus eq 'Graduation'}">
		        <form action="requestGraduationCertificate.jsp">
					<p><input type="submit" value=" 졸업 증명서 발행 "></p>
				</form>
		        <p>축하합니다! 당신은 졸업했습니다.</p>
		    </c:when>
		    <c:otherwise>
		        <p>알 수 없는 학적 상태입니다.</p>
	    </c:otherwise>
		</c:choose>
		
			
					
		
	
	</div>
		
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />
	
</body>
</html>








