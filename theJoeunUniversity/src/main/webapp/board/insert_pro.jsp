<%@page import="admin.Service.BoardServiceImpl"%>
<%@page import="admin.Service.BoardService"%>
<%@page import="admin.DTO.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//필요한 정보 : 제목, 작성자, 내용
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String content = request.getParameter("content");

Board board = new Board(title, writer, content);

BoardService boardService = new BoardServiceImpl();
int result = boardService.insert(board);

String root = request.getContextPath();
if (result > 0) {
	//등록성공
	response.sendRedirect(root + "/board/boardlist.jsp");
} else {
	//등록실패
	response.sendRedirect(root + "/board/insert.jsp?msg=0");
}
%>