<%@page import="admin.Service.BoardServiceImpl"%>
<%@page import="admin.Service.BoardService"%>
<%@page import="admin.DTO.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//필요한 정보 : no
String reqNo = request.getParameter("no");
int no = reqNo == null ? 0 : Integer.parseInt(reqNo);

BoardService boardService = new BoardServiceImpl();
int result = boardService.delete(no);

String root = request.getContextPath();
if (result > 0) {
	//삭제 성공
	response.sendRedirect(root + "/board/boardlist.jsp");
} else {
	//삭제 실패
	response.sendRedirect(root + "/board/read.jsp?msg=0");
}
%>