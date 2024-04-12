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
<script src="https://unpkg.com/hangul-js" type="text/javascript"></script>
<jsp:include page="/layout/link.jsp" />
<jsp:include page="/layout/mainLink.jsp" />
<jsp:include page="/layout/informationLayout/loginlink.jsp" />

<style>
header{ border-bottom: 1px solid white; width: 100%;}
footer{ border-top: 1px solid white;}
</style>
</head>
<body>
	<div id="outer" style="display: none; width: 100vw; height: 100vh; position: fixed; z-index: 8000; background-color: rgba(0,0,0,0.45); cursor: pointer; "></div>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />


	<div class="container">
		<div class="loginbox" align="center">
			<form action="login_pro.jsp" method="post">

				<div>
					<input  type="text" class="textlogin" name="studentId" id="studentId" 
					value="" placeholder="학번을 입력해주세요">
				</div>
				<div>
					<input type="password" class="textlogin" name="birth" id="birth"
						value="" placeholder="생일을 입력해주세요">
				</div>

				<div>
					<img id="loginlogo"
						src="<%=request.getContextPath()%>/information/img/squarelogo.png"
						alt="로고사진">
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
<!-- 				<div id="keyboardzone" style=" width: 984px; height: 450px;"></div> -->
	
	<div id="keyboardzone"></div>

	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />

	<!-- script -->
	<jsp:include page="/layout/script.jsp" />

	<!-- login.jsp 에서만 -->
	<script
		src="<%=request.getContextPath()%>/static/js/informationJs/keyboard.js"></script>


	<script type="text/javascript">
		var keyboardzone = document.getElementById("keyboardzone");
		var currInputId
		var input
		var keyboard
		
		// 학번, 생일 입력 클릭, 
		$('.textlogin').on('foucs, click',function() {
			let updated = false
			if( currInputId != $(this).attr('id') ) updated = true
			currInputId = $(this).attr('id')
			input = document.getElementById(currInputId);
			input.removeEventListener('click', function() { console.log('이벤트 제거함..')})
			addInputEvent(updated)
		})

		
		
		function addInputEvent(updated) {
			
			input.addEventListener("click", function() {
				keyboard.setInput(this);
				keyboard.setClick(function(text) {
					console.log("input을 click한 후 : ", text);
				})
				keyboard.setEnter(function(e) {
						$('#outer').hide()
					
					if( keyboardzoneCheck ) {
				        $('#keyboardzone').css({
				            bottom: -400 + "px"
				        });
				        keyboardzoneCheck = false
					}
				});
			});
			
			if( keyboard == null || updated ) {
				
				$('#keyboardzone').empty()
				
				keyboard = new customKeyboard(keyboardzone, input, function(text) {
					console.log("click : ", text);
				}, function() {
					console.log("esc");
				}, function(e) {
					$('#outer').hide()
					
					if( keyboardzoneCheck ) {
				        $('#keyboardzone').css({
				            bottom: -400 + "px"
				        });
				        keyboardzoneCheck = false
					}
					
					console.log("앤터 : ", e);
				}, null);
				
			}
		}
		
	</script>

</body>
</html>









