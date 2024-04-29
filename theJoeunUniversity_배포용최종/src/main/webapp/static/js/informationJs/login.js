

let keyboardzoneCheck = false

$(function() {
	
	// 학번, 생일 입력 클릭, 
	$('.textlogin').on('click',function() {
		
//		$(this).css({
//			'background-color' : 'red'
//		})

		$(this).addClass('clicked')
		
		if( !keyboardzoneCheck ) {
        	$('#keyboardzone').css({bottom: 0 + "px"});
        	keyboardzoneCheck = true
        }
        
        $('#outer').show()
	})
	
	
	// 학번, 생일 입력 변경,
	$('.textlogin').on('change',function() {
		
		let value = $(this).val()
		
		// 값이 없으면
		if( value == null || value == '' ) {
			$(this).removeClass('clicked')
        
		}
		
		if( keyboardzoneCheck ) {
	        $('#keyboardzone').css({
	            bottom: -400 + "px"
	        });
	        keyboardzoneCheck = false
		}
	})
	
	$('#outer').on('click',function() {
		
		$('#outer').hide()
		
		if( keyboardzoneCheck ) {
	        $('#keyboardzone').css({
	            bottom: -400 + "px"
	        });
	        keyboardzoneCheck = false
		}
		
	})
	

	

	
	
//	$("*:not(.textlogin, #keyboardzone)").on('click',function() {
//		if( keyboardzoneCheck ) {
//	        $('#keyboardzone').css({
//	            bottom: -400 + "px"
//	        });
//	        keyboardzoneCheck = false
//		}
//	})

	
	
	
})







// 페이지가 로드되면 실행되는 함수
//window.onload = function() {
//    var button = document.querySelector('.textlogin');
//    // 포커스 이벤트와 포커스 아웃 이벤트를 처리하는 함수를 연결합니다.
//    button.addEventListener('focus', handleFocus);
//    button.addEventListener('blur', handleBlur);
//};
