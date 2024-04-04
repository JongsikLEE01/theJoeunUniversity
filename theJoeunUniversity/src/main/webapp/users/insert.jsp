<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 입력</title>
</head>
<body>
	<h1>학생 정보 입력</h1>

	<form action="<%=request.getContextPath()%>/users/insert_pro.jsp">
		<!-- update.jsp table 태그 복사해서 가져오기 -->
		<table border="1">
			<tr>
				<th>학번</th>
				<td><input type="text" name="studentid" value="" /></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type="text" name="name" value="" /></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="text" name="birth" value="" /></td>
			</tr>
			<tr>
				<th>메일주소</th>
				<td><input type="text" name="mail" value="" /></td>
			</tr>
			<tr>
				<th>재학구분</th>
				<td><input type="text" name="academicstatus" value="" /></td>
			</tr>
			<tr>
				<th>학과</th>
				<td><input type="text" name="dno" value="" /></td>
			</tr>
		</table>
		<input type="submit" value="등록" />
	</form>
</body>
</html>













