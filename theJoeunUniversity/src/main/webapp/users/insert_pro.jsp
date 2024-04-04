<%@page import="admin.Service.UserServiceImpl"%>
<%@page import="admin.Service.UserService"%>
<%@page import="admin.DTO.Users"%>
<%@page import="admin.Service.BoardServiceImpl"%>
<%@page import="admin.Service.BoardService"%>
<%@page import="admin.DTO.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//필요한 정보 : 학번, 이름, 생년월일, 메일주소, 재학상태, 학과번호
String studentid = request.getParameter("studentid");
String name = request.getParameter("name");
String birth = request.getParameter("birth");
String mail = request.getParameter("mail");
String academicstatus = request.getParameter("academicstatus");
String dno = request.getParameter("dno");

Users user = new Users(studentid, name, birth, mail, academicstatus, Integer.parseInt(dno));

UserService userService = new UserServiceImpl();
int result = userService.insert(user);

String root = request.getContextPath();
if (result > 0) {
	//등록성공
	response.sendRedirect(root + "/users/userslist.jsp");
} else {
	//등록실패
	response.sendRedirect(root + "/users/insert.jsp?msg=0");
}
%>