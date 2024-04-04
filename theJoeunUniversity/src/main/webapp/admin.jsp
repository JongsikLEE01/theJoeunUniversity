<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>admin login</h1>
	<form method="post" action="adminlist.jsp">
		<p>
			ID : <input type="text" name="id">
		<p>
			PASSWORD : <input type="text" name="passwd">
		<p>
			<input type="submit" value="로그인">
	</form>
</body>
</html>