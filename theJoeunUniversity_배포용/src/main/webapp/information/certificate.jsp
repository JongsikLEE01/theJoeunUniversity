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
<title>증명서 발행 페이지</title>
<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />
<jsp:include page="/layout/informationLayout/certificatelink.jsp" />
<style>
header{ border-bottom: 1px solid white; width: 100%;}
footer{ border-top: 1px solid white;}
</style>
</head>
<body>
	<script>
	function openTranscript() {
		  const options = 'width=500, height=500, status=no, menubar=no, toolbar=no, resizable=no';
		  const leftPosition = (screen.width - 700) / 2; // 화면의 가로 중앙
		  const topPosition = (screen.height - 900) / 2; // 화면의 세로 중앙
		  window.open('requestTranscript.jsp', '_blank', `${options}, left=${leftPosition}, top=${topPosition}`);
		}
	
	function openEnrollment() {
	    console.log("안녕하세요! 이것은 로그 메시지입니다.");
	    const options = 'width=670,height=950,status=no,menubar=no,toolbar=no,resizable=no';
	    const leftPosition = (screen.width - 670) / 2; // 화면의 가로 중앙
	    const topPosition = (screen.height - 950) / 2; // 화면의 세로 중앙
	    window.open('requestEnrollmentCertificate.jsp', '_blank', `${options},left=${leftPosition},top=${topPosition}`);
	}

	function openGraduationment() {
		  const options = 'width=700, height=900, status=no, menubar=no, toolbar=no, resizable=no';
		  const leftPosition = (screen.width - 700) / 2; // 화면의 가로 중앙
		  const topPosition = (screen.height - 900) / 2; // 화면의 세로 중앙
		  window.open('requestGraduationCertificate.jsp', '_blank', `${options}, left=${leftPosition}, top=${topPosition}`);
		}
	
	</script>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />

	<!-- 컨텐츠 -->
	<div class="container">
		<!-- 로그인 시 -->
		
		<div>
			<p class="toptext">${ sessionScope.Name }님 어떤걸 도와드릴까요 ?</p>
		</div>
		
		<div class="certificatelinkButton">
				<button type="button" class="score" onclick="openTranscript()">
					<img src="<%=request.getContextPath()%>/information/img/score.png"
						alt="Submit" class="scoreimg">
				<div class="scoretext">성적 증명서 발행</div>
				</button>

			<c:choose>
				<c:when test="${sessionScope.academicStatus eq '재학'}">
						<button type="button" class="score" onclick="openEnrollment()">
							<img
								src="<%=request.getContextPath()%>/information/img/enrollment.png"
								alt="Submit" class="scoreimg">
						<div class="scoretext">재학 증명서 발행</div>
						</button>
				</c:when>
				<c:when test="${sessionScope.academicStatus eq '졸업'}">
					<form onsubmit="openGraduationment()" method="post">
						<button type="submit" class="score">
							<img
								src="<%=request.getContextPath()%>/information/img/graduation.png"
								alt="Submit" class="scoreimg">
						<div class="scoretext">졸업 증명서 발행</div>
						</button>
					</form>
				</c:when>
				<c:otherwise>
					<p class="guide">알 수 없는 학적 상태입니다.</p>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div>
			<img height="220px"
				src="<%=request.getContextPath()%>/information/img/squarelogo.png"
				alt="로고사진">
		</div>

		<div class="bottomtext">
			<c:choose>
				<c:when test="${sessionScope.academicStatus eq '재학'}">
					<p class="guide">현재 재학 중입니다.</p>
				</c:when>
				<c:when test="${sessionScope.academicStatus eq '졸업'}">
					<p class="guide">졸업을 축하합니다!</p>
				</c:when>
			</c:choose>
		</div>
		
	</div>

	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />
	<%-- <jsp:include page="/static/js/informationJs/certificate.js" />
	<script src="<%= request.getContextPath() %>/static/js/informationJs/certificate.js">
	</script> --%>

</body>
</html>








