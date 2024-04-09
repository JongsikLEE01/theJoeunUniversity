const root = "${ root }"
		const year = "${ param.year }"
		let realMonth = "${ param.month }"
		let month = "${ param.month }"
		month = month < 10 ? "0" + month : month
		
		console.log('년도 : ' + year)
		console.log('월 : ' + month)
	
		$(function() {
			// data 속성값으로 요소 선택
			// 일정이 있는 날짜들은 .date 클래스 추가
			$('[data=10]').addClass('date')
			
			getDates(year, month)
		})
		
		function getDates(year='', month='') {
			
			const url = root + "/calendar"
			
			console.log('url : ' + url)
			
			const data = {
				'year' : year,
				'month' : month,
			}
			
				
			// jQuery 로 AJAX 요청
            $.ajax({
                type            : 'GET',                 // 요청 메소드
                url             : url,                    // 요청 URL
                data            : data,   // 요청 데이터
                contentType     : 'application/json',     // 요청 데이터 타입
                dataType        : 'html',     // 응답 데이터 타입
                // 요청 성공 
                success         : function(response, status) {
                    // response : 응답 데이터
                    // status   : 응답 상태
                    console.log(response)
                    
                    // 문자열 --> JSON
                    let calList = JSON.parse( response ).dates
                    
                    console.log("달력 데이터 -------------")
                    console.log(calList[0].strDate)
                    
                    // 달력에 일정 표시
                    paintDates( calList )  
                },
                // 에러
                error           : function(xhr, status) {
                    // xhr      : XMLHttpRequest 객체
                    // status   : 응답 상태
                    alert('에러 발생')
                }
                
            })
			
		}
		
		
		// 달력에 일정 표시
		function paintDates( calList ) {
			console.log(calList)
			
			let dateList = new Array()
			for (let i = 0; i < calList.length; i++) {
				
				const strDate = calList[i].strDate
				const endDate = calList[i].endDate
				
				const strDay = parseInt( strDate.split("-")[1] ) 
				const endDay = parseInt( endDate.split("-")[1] )
				
				const content = calList[i].content
				
				// 끝나는 일정이 다음 달이면, endDay 를 31로 고정
				const endMonth = endDate.split("-")[0]
				let nextMonth = realMonth + 1
				nextMonth = nextMonth < 10 ? "0" + nextMonth : nextMonth
				if( endMonth == nextMonth ) {
					endDay = 31
				}
				
// 				console.log('strDay : ' + strDay)
// 				console.log('endDay : ' + endDay)
				
				// strDay : 1
				// endDAy : 5
				// j : 1,2,3,4,5
				for (let j = strDay; j <= endDay; j++) {
					let day = j < 10 ? "0" + j : j
					let date = month + "-" + day
					let obj = {
							'date' 		: date,
							'content' 	: content
					}
					dateList.push(obj)
				}
			}
			
			for (var i = 0; i < dateList.length; i++) {
				let date = dateList[i].date
				let content = dateList[i].content
				$("[data=" + date +"]").addClass("date")
				
				
				let count = $("[data=" + date +"] ~ .count").text()
				console.log(content)
				console.log(count)
				
				if( count == null || count == '' ) {
					count = 0
				}
				let sumCount = parseInt( count ) + 1
				
				$("[data=" + date +"] ~ .count").text( sumCount )
				
				if(count != 1){
					let dateli = `<li>${ content }</li>`
					$("[data=" + date +"] ~ .date-content").append(dateli)					
				}
				
				// 컨텐츠 띄우는 것부터./...
				
				
			}
		}
		
		function blinkInfoContent() {
		    blinkElement($('.infoContent'), 3);
		    blinkElement($('.infoDay'), 3);
		}

		function blinkElement(element, times) {
		    let count = 0;
		    const blinkInterval = setInterval(function() {
		        element.toggleClass('blink');
		        count++;
		        if (count === times * 2) {
		            clearInterval(blinkInterval);
		            element.removeClass('blink');
		        }
		    }, 1000);
		}