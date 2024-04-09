<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.UUID"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사진업로드</title>
<link rel="stylesheet" href="../static/css/adminLogin.css">
</head>
<body>
	<%
	String fileUploadPath = "C:/joeun/jsp/thejoeununiversity/src/main/webapp/users/img";

	// commons-fileupload 에서 파일 업로드 기능을 가진 객체 DiskFileUpload 생성
	DiskFileUpload upload = new DiskFileUpload();
	
	// parseRequest(request) 
	// : request 객체를 분석하여, multipart/form-data 유형의 파라미터만 읽어드려서 List로 반환
	List<FileItem> items = upload.parseRequest(request);	// FileItem 타입의 파라미터 목록
	
	// for( int i = 0 ; i < items.size() ; i++ ) {
	//	 FileItem item = (FileItem) items.get(i);
	// }
	
	Iterator<FileItem> params = items.iterator();			// 반복 객체
	
	while( params.hasNext() ) {
		FileItem item = params.next();					// 파일 요소
		// isFormField() : 요청 파라미터가 일반 데이터 인지 확인 (일반:true, 파일:false)
		
		// 일반 데이터
		if( item.isFormField() ){
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			out.println(name + " : " + value + "<br>");
		}
		// 파일 데이터
		else{
			// 파일명 중복을 방지하기 위해
			// UID_파일명.확장자 형식으로 파일명 지정하기 : UID_강아지.jpg
			String fileName = UUID.randomUUID() + "_" + item.getName();
			
			File file = new File(fileUploadPath + "/" + fileName); // ~/UPLOAD/강아지.jpg 경로로 파일 객체 생성
			item.write(file);				// write() : 파일 저장
			
			// 파일 데이터 정보
			String filefieldName = item.getFieldName();
			String contentType = item.getContentType();
			long fileSize = item.getSize();
			
// 			out.print("--------------------------------------------- <br>" );
// 			out.print("요청 파라미터 이름 : " + filefieldName + "<br>");
// 			out.print("저장 파일 이름 : " + fileName + "<br>");
// 			out.print("파일 컨텐츠 이름 : " + contentType + "<br>");
// 			out.print("파일 크기: " + fileSize + "<br>");
			
			
			%>
			<div class="container">
			<div class="container-head">
			<div class="item">
				<img src="../static/img/adminLogo.png" alt="로고">
			</div>
				<div class="item">
					<p>
						THEJOEUN University Kiosk <br> Management System
					</p>
				</div>
			</div>
				<div class="item"><%=fileName %>
					<img src="<%=request.getContextPath()%>/users/img/<%=fileName %>" alt="사진"><br/>
				</div>
			</div>

			
			<% 
			
		}
				
	}
	out.print("<h1>파일 업로드 성공!</h1>");
%>

<div class="container-insertFt">
				<div class="insertBtn">
					<table>
						<tr>
							<td>
								<form action="<%=request.getContextPath()%>/users/userslist.jsp"
									method="GET">
									<input type="submit" value="닫기" />
								</form>
							</td>
						</tr>
					</table>
				</div>
			</div>




</body>
</html>