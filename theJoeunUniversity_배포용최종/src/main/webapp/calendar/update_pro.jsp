<%@page import="admin.Service.CalendarServiceImpl"%>
<%@page import="admin.Service.CalendarService"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="admin.DTO.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 필요한 정보 : 번호, 제목, 작성자, 내용
String reqNo = request.getParameter("no");
int no = reqNo == null ? 0 : Integer.parseInt(reqNo);
String strDate = request.getParameter("strdate");
String endDate = request.getParameter("enddate");
String content = request.getParameter("content");

SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
Date sDate = formatter.parse(strDate);
Date eDate = formatter.parse(endDate);

Calendar calendar = new Calendar(sDate, eDate, content);
calendar.setNo(no);

CalendarService calendarService = new CalendarServiceImpl();
int result = calendarService.update(calendar);

String root = request.getContextPath();
if (result > 0) {
	//수정성공
	response.sendRedirect(root + "/calendar/calendarlist.jsp");
} else {
	//수정실패
	response.sendRedirect(root + "/calendar/update.jsp?msg=" + no + "&msg=0");
}
%>