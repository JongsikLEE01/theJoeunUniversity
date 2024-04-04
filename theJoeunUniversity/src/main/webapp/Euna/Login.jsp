<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/layout/loginlink.jsp" />
<link  href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
</head>
<body>
	
	<div class="wrapper">
		<form action="">
			<h1>Login</h1>
			<div class="input-box">
				<input type="text" placeholder="name"
				required>
				<i class="bx bxs-user"></i>
			</div>
			<div class="input-box">
				<input type="password"
				placeholder="Password" required>
				<i class="bx bxs-lock-alt"></i>
			</div>
			<button type="submit" class="btn">Login</button>

		</form>
	</div>

</body>
</html>