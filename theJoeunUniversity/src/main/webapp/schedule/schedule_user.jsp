<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Calendar.DTO.Calendar"%>
<%@page import="java.util.List"%>
<%@page import="Calendar.Service.CalendarServiceImpl"%>
<%@page import="Calendar.Service.CalendarService"%>
<%@page import="Calendar.MyCalendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
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
<title>학사 일정</title>
	<jsp:include page="/layout/link.jsp" />
	<jsp:include page="/layout/schedule_link.jsp" />
	<jsp:include page="/layout/mainLink.jsp" />
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	
</head>
<body>
<!-- 	유저페이지 -->
	<%
	
	String root = request.getContextPath();
	pageContext.setAttribute("root", root);
	
	// 년, 월 받아오기
	Date date = new Date();
	int year = date.getYear() + 1900;
	int month = date.getMonth() + 1;

	//	오류사항 걸러주기	
	try {
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));

		if (month >= 13) {
			year++;
			month = 1;
		} else if (month <= 0) {
			year--;
			month = 12;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}

	// 날짜 데이터 불러오기
	CalendarService calendarService = new CalendarServiceImpl();
	List<Calendar> calendarList = calendarService.list();

	// 날짜 포맷
	SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
	%>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />

	<!-- 컨텐츠 -->
	<div class="container">
		<ul class="mainTitle">
			<li class="Line"></li>
			<li class="title">학사 일정</li>
			<li class="Line"></li>
		</ul>
		<div class="months">
			<div class="select">
				<input type="button" value="&lt;" class="selectbtn"
					onclick="location.href='?year=<%=year%>&month=<%=month - 1%>'">
				<span class="year"><%=year%>년 학사일정</span>
				<input type="button"
					value="&gt;" class="selectbtn"
					onclick="location.href='?year=<%=year%>&month=<%=month + 1%>'">
			</div>
		</div>
		<div class="content">
			<div class="calendar">
				<span class="titleMonth"><%=month%>월</span>
			<%-- <span class="myMonth"><%= checkMonth %></span> --%>
				<!-- 달력 출력 -->
				<table class="Tcalendar" align="center" cellpadding="5" cellspacing="0">
					<!-- 요일 표시 -->
					<tr class="week">
						<td >S</td>
						<td >M</td>
						<td >T</td>
						<td >W</td>
						<td >T</td>
						<td >F</td>
						<td >S</td>
					</tr>
					<tr>
						<%
						//	1일의 요일을 계산
						int first = MyCalendar.weekDay(year, month, 1);
						// 해당 월의 전 달의 마지막 날짜의 시작일 계산
						int start = month == 1 ? MyCalendar.lastDay(year - 1, 12) - first : MyCalendar.lastDay(year, month - 1) - first;
	
						// 1일 출력 위치를 맞추기
						for (int i = 1; i <= first; i++) {
							if (i == 1) {
								out.println("<td></td>");
							} else {
								out.println("<td></td>");
							}
						}
	
						String strMonth = month < 10 ? "0" + month : month + "";
						// 1일부터 마지막 날까지 반복해 날짜 출력
						for (int day = 1; day <= MyCalendar.lastDay(year, month); day++) {
							String strDay = day < 10 ? "0" + day : day + "";
							out.println("<td><span data='" + (strMonth+"-"+strDay) + "'></span><span>" + day+ "</span><span class='count' onclick='blinkInfoContent()'></span><ul class='date-content'></ul></td>");
							// 출력한 날짜가 토요일이면서 마지막 날이면 줄바꿈
							if (MyCalendar.weekDay(year, month, day) == 6 && day != MyCalendar.lastDay(year, month)) {
								out.println("</tr><tr>");
							}
						}
						%>
					</tr>
				</table>
			</div><!-- 캘린터 끝 -->
			<div class="info">
				<p class="infoTitle">상세 일정</p>
				<table class="Tinfo">
					<%
					if (calendarList == null || calendarList.size() == 0) {
					%>
					<tr>
						<td colspan="2">해당 월의 행사는 아직 정해지지 않았습니다.</td>
					</tr>
					<%
					} else {
					for (Calendar calendar : calendarList) {
					%>
					<tr><!-- 번호 -->
							<%
							SimpleDateFormat yearSdf = new SimpleDateFormat("YYYY");
							SimpleDateFormat monthSdf = new SimpleDateFormat("MM");
							SimpleDateFormat daySdf = new SimpleDateFormat("DD");
							// 년도,달 저장
							int DateYear = Integer.valueOf(yearSdf.format(calendar.getStrDate() ) );
							int DateMonth = Integer.valueOf(monthSdf.format(calendar.getStrDate() ) );
							
							// 시작일, 종료일 확인
							int strDay = Integer.valueOf(daySdf.format(calendar.getStrDate() ) );
							int endDay = Integer.valueOf(daySdf.format(calendar.getEndDate() ) );
							
							// 해당 년도와 달을 검사
							if(DateYear == year && DateMonth == month){
								// 시작월 종료월 확인 후 출력
								if ( strDay == endDay ) {
									// 날짜
									out.print("<td class='infoDay'>");
									out.print(sdf.format(calendar.getStrDate()));
									out.print("</td>");
									// 내용
									out.print("<td class='infoContent'>");
									out.print(calendar.getContent());
									out.print("</td>");
								} else {
									// 날짜
									out.print("<td class='infoDay'>");
									out.print(sdf.format(calendar.getStrDate()) + " ~ " + sdf.format(calendar.getEndDate() ) );
									out.print("</td>");
									// 내용
									out.print("<td class='infoContent'>");
									out.print(calendar.getContent());
									out.print("</td>");
								}							
							}else{
							}
							%><!-- 년도와 달 검사 else문 종료-->
					</tr>
					
					<%
						}
					}
					%>
				</table>
			</div>
		</div>
		<!-- info 끝 -->
	</div>
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />

	<!-- 스크립트 -->
	<script>
		// 자바를 자바스크립트로
		// let calList = "${calendarList}"
		const root = "${ root }"
		let year = "${ param.year }"
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
		    }, 700);
		}
	</script>
</body>
</html>