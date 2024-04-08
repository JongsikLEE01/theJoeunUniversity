<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// request.getContextPath() -> /shop 즉, 최상위 경로를 지정
String root = request.getContextPath();
%>
<style>
.footerLogo{
	width: 160px;
	height: 60px
}
footer .underbar{ background-color: white;}
footer .underbar a{ color: #081012 }

</style>

<footer>	
	<div class="underbar">
		<a id="previous" ><i class="fa fa-arrow-left"></i></a>
		<a href="<%= root%>/index.jsp"><img class="footerLogo" src="<%=root%>/static/img/푸터로고.png"></a>
		<a id="next"><i class="fa fa-arrow-right"></i></a>
	</div>
	<div class="banner">
		<p>배너 이미지</p>	
	</div>
</footer>

 <script>
    document.getElementById("previous").addEventListener("click", function(event) {
        event.preventDefault();
        history.back();		// 이전 페이지
    });

    document.getElementById("next").addEventListener("click", function(event) {
        event.preventDefault();
        history.forward();	// 다음 페이지
    });
</script>