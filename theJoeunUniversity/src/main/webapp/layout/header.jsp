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
<style>
.headerLogo{	
	width: 247px;
	height: 90px;
	border: 0;
}
header{ background-color: #4D8FC3; }
header .top a{ margin: 0; color: white;}
#admin{ margin-top: 23px;}
</style>

<header>
	<div class="top">
		<a class="cog" href="<%= root%>/admin.jsp"><i style="color: white;" id="admin" class="fa fa-cog"></i></a>
        <a class="headerLogo" href="<%= root%>/index.jsp"><img class="headerLogo" src="<%=root%>/static/img/헤더로고.png"></a>
        <span></span>
	</div>
</header>