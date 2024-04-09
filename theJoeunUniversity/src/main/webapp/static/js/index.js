$(function() {

    const swiper = new Swiper('.swiper', {
        // Optional parameters
        direction: 'horizontal',            /* 슬라이드 방향 : 'vertical' , 'horizontal' */
        loop: true,                         // 반복여부 (맨 마지막까지 가서 다시 처음으로)
        autoplay: {                         // 자동재생
            delay: 4500,                    // 슬라이드 당 지연시간 (ms)
            pauseOnMouseEnter: false,        // 마우스 올리면, 자동재생 멈춤
            disableOnInteraction: false,     // 인터렉션(화살표,드래그,...) 중 자동재생 비활성화        
        },
        speed: 2000,                        // 슬라이드가 넘어가는 시간 (ms)
        slidesPerView: 1,                   // 보여지는 슬라이드 개수
        spaceBetween: 0,                    // 슬라이드 간 여백

        grabCursor: true,                   // 마우스커서를 잡는 손가락 모양 (귀여웡)
        centeredSlides: true,               // 센터모드
        
        // If we need pagination
        pagination: {
            el: '.swiper-pagination',
            type:   'bullets',          // 'bullets'        : ● ● ●
                                        // 'fraction'       : (현재번호/전체번호)
                                        // 'progressbar'    : 진행률(게이지)
            clickable: true,
        },



      });


})