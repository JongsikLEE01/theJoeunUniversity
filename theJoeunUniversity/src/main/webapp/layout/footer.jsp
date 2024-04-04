<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// request.getContextPath() -> /shop 즉, 최상위 경로를 지정
String root = request.getContextPath();
%>
<header>
	<nav>
		<ul>
            <li><a onclick="Back()">&lt;</a></li>
            <li><a href="<%= root%>/index.jsp">메인화면</a></li>
            <li><a onclick="forward()">&gt;</a></li>
		</ul>
	</nav>
</header>
<footer class="footer">
	
	<p>배너 이미지</p>	
</footer>

<script type="text/javascript">
	function Back() {
		window.histoty.back()
	}
	
	function forward() {
		window.histoty.forward()
	}
</script>