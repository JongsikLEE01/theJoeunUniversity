
<%@page import="miniproject.Service.BoardServiceImpl"%>
<%@page import="miniproject.Service.BoardService"%>
<%@page import="miniproject.DTO.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
//필요한 정보 : 번호 제목 작성자 내용
String reqNo = request.getParameter("no");
int no = reqNo == null ? 0 :Integer.parseInt(reqNo);
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String content = request.getParameter("content");

Board board = new Board (title, writer, content);
board.setNo(no);

BoardService boardService = new BoardServiceImpl();
int result = boardService.update(board);

String root = request.getContextPath();
if (result > 0){
	//수정 성공
	response.sendRedirect(root + "/board/list.jsp");
} else{
	//수정 실패
	response.sendRedirect(root+"/board/update.jsp?no=" + no + "&msg=0");
}

%>









