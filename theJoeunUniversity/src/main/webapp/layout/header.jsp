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
<header class="header">
	<nav>
		<ul>
            <li><a onclick="">햄버거</a></li>
            <li><a href="<%= root%>/index.jsp">더조은대학교</a></li>
            <li><a href="<%= root%>/admin.jsp">어드민페이지</a></li>
		</ul>
	</nav>
</header>