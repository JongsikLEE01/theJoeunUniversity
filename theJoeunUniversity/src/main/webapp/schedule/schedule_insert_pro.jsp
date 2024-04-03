<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="Calendar.DTO.Calendar"%>
<%@page import="Calendar.Service.CalendarServiceImpl"%>
<%@page import="Calendar.Service.CalendarService"%>
<%@page import="Calendar.MyCalendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 필요한 정보? 번호, 제목, 작성자, 내용
	String reStrDate = request.getParameter("strDate");
	String reEndDate = request.getParameter("endDate");
	String content = request.getParameter("content");
	
	// 2024-01-01
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date sDate = sdf.parse(reStrDate);
	Date eDate = sdf.parse(reEndDate);

	out.println("sDate : " + sDate );
	out.println("eDate : " + eDate  );
	 
	Calendar cal = new Calendar(sDate, eDate, content);
	
	CalendarService calendarService = new CalendarServiceImpl();
	int result =  calendarService.insert(cal);
	
	String root = request.getContextPath();
	if(result > 0){
		// 수정 성공
		response.sendRedirect(root + "/schedule/schedule.jsp");
	}else{
		// 수정 실패
		response.sendRedirect(root + "/schedule/schedule_insert.jsp?no=msg=0");
	}
%>