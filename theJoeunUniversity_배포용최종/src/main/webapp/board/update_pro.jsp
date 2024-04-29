<%@page import="admin.DTO.Board"%>
<%@page import="admin.Service.BoardServiceImpl"%>
<%@page import="admin.Service.BoardService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 필요한 정보 : 번호, 제목, 작성자, 내용
String reqNo = request.getParameter("no");
int no = reqNo == null ? 0 : Integer.parseInt(reqNo);
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String content = request.getParameter("content");

Board board = new Board(title, writer, content);
board.setNo(no);

BoardService boardService = new BoardServiceImpl();
int result = boardService.update(board);

String root = request.getContextPath();
if (result > 0) {
	//수정성공
	response.sendRedirect(root + "/board/boardlist.jsp");
} else {
	//수정실패
	response.sendRedirect(root + "/board/update.jsp?msg=" + no + "&msg=0");
}
%>