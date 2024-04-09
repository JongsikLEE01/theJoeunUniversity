<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// request.getContextPath() -> /shop 즉, 최상위 경로를 지정
String root = request.getContextPath();
%>
<!-- swiper 플러그인 -->
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!-- swiper 플러그인 -->
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<footer>	
	<div class="underbar">
		<a id="previous" ><i class="fa fa-arrow-left"></i></a>
		<a href="<%= root%>/index.jsp"><img class="footerLogo" src="<%=root%>/static/img/푸터로고.png"></a>
		<a id="next"><i class="fa fa-arrow-right"></i></a>
	</div>
	<div class="swiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide"><img src="<%=root %>/static/img/배너1.jpg" alt=""></div>
			<div class="swiper-slide"><img src="<%=root %>/static/img/배너2.jpg" alt=""></div>
			<div class="swiper-slide"><img src="<%=root %>/static/img/배너3.png" alt=""></div>
			<div class="swiper-slide"><img src="<%=root %>/static/img/배너4.jpg" alt=""></div>
			<div class="swiper-slide"><img src="<%=root %>/static/img/배너5.jpg" alt=""></div>
			<div class="swiper-slide"><img src="<%=root %>/static/img/배너6.png" alt=""></div>
			<div class="swiper-slide"><img src="<%=root %>/static/img/테스트1.PNG" alt=""></div>
		</div>
	</div>
    <style>
        footer .underbar{ background-color: #4D8FC3;}
        footer .underbar a{ color: w }
        
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

<script type="text/javascript">
	function Back() {
		window.histoty.back()
	}
	
	function forward() {
		window.histoty.forward()
	}
</script>