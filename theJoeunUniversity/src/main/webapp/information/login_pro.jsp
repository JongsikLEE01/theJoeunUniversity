<%@page import="information.DTO.Users"%>
<%@page import="com.oreilly.servlet.CookieNotFoundException"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="information.Service.UserServiceImpl"%>
<%@page import="information.Service.UserService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String studentId = request.getParameter("studentId");
	String birth = request.getParameter("birth");
	
	Users user = new Users(studentId, birth);
	
	
	// 로그인 요청
	UserService userService = new UserServiceImpl();
	Users loginUser = userService.login(user);
	
	if( loginUser != null ) {
		// 로그인 성공
		// 세션에 아이디 등록 후, 증명서 발행 페이지로 이동
		session.setAttribute("Name", loginUser.getName());
		session.setAttribute("studentId", studentId);
		session.setAttribute("academicStatus", loginUser.getAcademicStatus());
		response.sendRedirect("certificate.jsp");
	}
	else {
		// 로그인 실패
		response.sendRedirect("login.jsp?msg=0");
	
		
	
		

	}
	
	
%>



