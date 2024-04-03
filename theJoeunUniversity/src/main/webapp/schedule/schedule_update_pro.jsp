<%@page import="java.text.SimpleDateFormat"%>
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
	String reqNo = request.getParameter("no");
	int no =  reqNo == null ? 0 : Integer.parseInt(reqNo);
	String reStrDate = request.getParameter("2024년"+"strDate"+"00시 00분 00초");
	String reEndDate = request.getParameter("2024년"+"endDate"+"00시 00분 00초");
	String content = request.getParameter("content");
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Date strDate =  sdf.parse(reStrDate);
	Date endDate =  sdf.parse(reEndDate);
	
	Calendar cal = new Calendar(strDate, endDate, content);
	cal.setNo(no);
	
	CalendarService calendarService = new CalendarServiceImpl();
	int result =  calendarService.update(cal);
	
	String root = request.getContextPath();
	if(result > 0){
		// 수정 성공
		response.sendRedirect(root + "/board/list.jsp");
	}else{
		// 수정 실패
		response.sendRedirect(root + "/board/update.jsp?no="+ no +"msg=0");
	}
%>