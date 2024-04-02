<%@page import="theJoeunUniversity.MyCalendar"%>
<%@page import="java.util.Date"%>
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
	<title>학사 일정</title>
	<jsp:include page="/layout/link.jsp"/>
	<link href="<%= request.getContextPath()%>/schedule/css/style.css" rel="stylesheet">
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp"/>

	<!-- 컨텐츠 -->
	<div class="container">
		<h1>학사 일정</h1>
		<div class="month">
			<div class="top">
				<a>전체</a>
			</div>
			<div class="bottom">
				<a>1월</a>
				<a>2월</a>
				<a>3월</a>
				<a>4월</a>
				<a>5월</a>
				<a>6월</a>
				<a>7월</a>
				<a>8월</a>
				<a>9월</a>
				<a>10월</a>
				<a>11월</a>
				<a>12월</a>
			</div>
		</div>
		<div class="calendar">
			<%
				// 년, 월 받아오기
				Date date = new Date();
				int year = date.getYear() +1900;
				int month = date.getMonth() +1;
				
				//	오류사항 걸러주기	
				try{
					year = Integer.parseInt(request.getParameter("year"));
					month = Integer.parseInt(request.getParameter("month"));
						
					if(month>=13){
						year++;
						month =1;
					}else if(month <=0){
						year--;
						month =12;
					}
				}catch(Exception e){
					e.printStackTrace();
				}
			%>
			<!-- 달력 만들기 -->
			<table width ="700" align ="center" cellpadding="5" cellspacing="0">
				<tr>
				<!-- 이전달 버튼 만들기 -->
					<th>
						<input type="button" value="이전 달" id="before" onclick="location.href='?year=<%=year%>&month=<%=month-1%>'">
					</th>
				<!-- 현재 달 출력 -->
					<th id = "title" colspan = "5">
						<%= month%>월
					</th>
				<!-- 다음달 버튼 만들기 -->
					<th>
						<input type="button" value="다음 달" id="next" onclick="location.href='?year=<%=year%>&month=<%=month+1%>'">
					</th>
				</tr>
				<!-- 요일 표시 -->
				<tr>
					<td class = "sunday">S</td>
					<td class = "etcday">M</td>
					<td class = "etcday">T</td>
					<td class = "etcday">W</td>
					<td class = "etcday">T</td>
					<td class = "etcday">F</td>
					<td class = "saturday">S</td>
				</tr>
					
				<!-- 날짜 집어 넣기 -->
					<tr>
				<%
					//	1일의 요일을 계산
					int first = MyCalendar.weekDay(year, month, 1);
					
					// 전 달날짜의 시작일을 계산
					int start = 0 ;
					start = month ==1? MyCalendar.lastDay(year-1, 12)- first : MyCalendar.lastDay(year, month-1)- first;
				
					//	1일의 요일만큼 반복하여 전달의날짜를 출력
					for(int i= 1; i<= first; i++){
						if(i==1){
						// 일요일 구분
							out.println("<td class = 'redbefore'></td>");
						}else{
							out.println("<td class = 'before'></td>");
							}
						}
				
					// 1~말일까지 출력
					for(int i = 1; i <= MyCalendar.lastDay(year, month); i++){		
						// 토요일이고 마지막 날이면 줄 바꿈
						if(MyCalendar.weekDay(year, month, i) == 6 && i != MyCalendar.lastDay(year, month)){
							out.println("</tr><tr>");			
						}
					}
					if(MyCalendar.weekDay(year, month, MyCalendar.lastDay(year, month)) !=6){
						for(int i = MyCalendar.weekDay(year, month, MyCalendar.lastDay(year, month))+1; i < 7; i++){
							out.println("<td></td>");	
						}
					}
				%>
				</tr>
			</table>
		</div>
		<div class="info">
		</div>
	</div>
	
	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp"/>

	<!-- 스크립트 -->
</body>
</html>