<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// request.getContextPath() -> /shop 즉, 최상위 경로를 지정
String root = request.getContextPath();
%>
<header>
	<nav>
		<ul>
            <li><a href="<%= root%>/index.jsp">Home</a></li>
			<li><a href="<%= root%>/about.jsp">학교 소개</a></li>
			<li><a href="<%= root%>/board/list.jsp">공지 사항</a></li>
			<li><a href="<%= root%>/schedule/schedule.jsp">학사 일정</a></li>
		</ul>
	</nav>
</header>