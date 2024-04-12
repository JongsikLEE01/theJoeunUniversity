<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// request.getContextPath() -> /shop 즉, 최상위 경로를 지정
String root = request.getContextPath();
%>
<!-- swiper 플러그인 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!-- swiper 플러그인 -->
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<footer>	
	<div class="underbar">
		<a id="previous" ><i id ="bakcForword" class="fa-solid fa-arrow-left"></i></a>
		<a href="<%= root%>/main.jsp"><img class="footerLogo" src="<%=root%>/static/img/푸터로고.png"></a>
		<a id="next"><i id ="bakcForword" class="fa-solid fa-arrow-right"></i></a>
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
    
    $(function() {
        const swiper = new Swiper('.swiper', {
            direction: 'horizontal',            /* 슬라이드 방향 : 'vertical' , 'horizontal' */
            loop: true,                         // 반복여부
            autoplay: {                         // 자동재생
                delay: 3000,                    // 슬라이드 당 지연시간 (ms)
                pauseOnMouseEnter: false,        // 마우스 올리면, 자동재생 멈춤
                disableOnInteraction: false,     // 인터렉션(화살표,드래그,...) 중 자동재생 비활성화        
            },
            speed: 1000,                        // 슬라이드가 넘어가는 시간 (ms)
            slidesPerView: 1,                   // 보여지는 슬라이드 개수
            spaceBetween: 0,                    // 슬라이드 간 여백
          });
    })
</script>