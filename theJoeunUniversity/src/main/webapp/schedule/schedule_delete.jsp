<%@page import="Calendar.DTO.Calendar"%>
<%@page import="Calendar.Service.CalendarServiceImpl"%>
<%@page import="Calendar.Service.CalendarService"%>
<%@page import="Calendar.MyCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	CalendarService calendarService = new CalendarServiceImpl();
 	int no = Integer.parseInt(request.getParameter("no"));
 	int result = calendarService.delete(no);
	
 	String root = request.getContextPath();
 	if(result > 0){
 		// 삭제 성공
 		response.sendRedirect(root + "/schedule/schedule.jsp");
 	}else{
 		// 삭제 실패
 		response.sendRedirect(root + "/schedule/schedule_read.jsp?no="+ no +"msg=0");
 	}
%>