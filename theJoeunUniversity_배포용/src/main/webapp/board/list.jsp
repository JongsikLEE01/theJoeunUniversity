<%@page import="board.DAO.BoardDAO"%>
<%@page import="admin.DTO.Board"%>
<%@page import="java.util.List"%>
<%@page import="board.Service.BoardService"%>
<%@page import="board.Service.BoardServiceImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>

<script src="https://unpkg.com/hangul-js" type="text/javascript"></script>
<link rel="stylesheet" href="css/Noticestyles.css">

<jsp:include page="/layout/link.jsp" />
</head>
<body>
	<div id="outer" style="display: none ; width: 100vw; height: 100vh; position: fixed; z-index: 8000; background-color: rgba(0,0,0,0.45); cursor: pointer; "></div>
		<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />

	<div class="container" style="width: 984px; height: 900px;" >
		
	<%
		String title = request.getParameter("title");
		title = title == null ? "" : title;
		BoardService boardService = new BoardServiceImpl();
		List<Board> boardList = null;
		
		// 검색
		if( title != null && !title.equals("") ) {
			boardList = boardService.search(title);
		}
		// 전체 목록
		else {
			boardList = boardService.list();
		}
			
			
	//	List<Board> searchList = boardService.searchList();
	%>

	<div class="search">
		<div class="row">
			<form method="get" name="search" action="list.jsp">
				<table class="pull-right">
					<tr>
						<td><input type="text" class="form-control textlogin" id="myinput"
							placeholder="제목 키워드 입력" name="title" maxlength="100" value="<%= title %>">
							</td>
						<td><button type="submit" class="searchbtn" >검색</button></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
	
		<div class="scroll">
			<table class="Ntable" >
				<tr class="InnerHeader">
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일자</th>
					<th>수정일자</th>
				</tr>
			<% if( boardList == null || boardList.size() == 0 ) { %>
			<tr>
				<td colspan="5">조회된 게시글이 없습니다.</td>
			</tr>
			<% } else {
					for(Board board : boardList) {
			%>
			
						<tr>
							<td><%= board.getNo() %></td>
							<td>
								<a href="<%= request.getContextPath() %>/board/BeRead.jsp?no=<%= board.getNo() %>" >
									<%= board.getTitle() %>
								</a>
							</td>
							<td><%= board.getWriter() %></td>
							<td><%= board.getReg_date() %></td>
							<td><%= board.getUpd_date() %></td>
						</tr>
			<%		}
				}
			%>
			</table> 
		</div>
</div>

	<div id="keyboardzone"></div>
	
<!-- 푸터 -->
<jsp:include page="/layout/footer.jsp" />

<!-- 배너 -->
<jsp:include page="/layout/mainLink.jsp" />

<!-- 스크립트 -->
<jsp:include page="/layout/script.jsp" />


<script src="<%=request.getContextPath()%>/static/js/informationJs/keyboard.js"></script>


	<script type="text/javascript">
    var keyboardzone = document.getElementById("keyboardzone");                    
    var input = document.getElementById("myinput");

    // 학번, 생일 입력 클릭, 
    /* $('.textlogin').on('focus click',function() {
        let updated = false;
        if (currInputId != $(this).attr('id')) updated = true;
        currInputId = $(this).attr('id');
        input = document.getElementById(currInputId);
        input.removeEventListener('click', function() { console.log('이벤트 제거함..'); });
        addInputEvent(updated);
    });
    */

    var keyboard = new customKeyboard(keyboardzone, input, 
        function(text) {
            console.log("click : ", text);
        }, 
        function() {
            console.log("esc");
        }, 
        function(text) {
        	$('#outer').hide()
			
			if( keyboardzoneCheck ) {
		        $('#keyboardzone').css({
		            bottom: -400 + "px"
		        });
		        keyboardzoneCheck = false
			}
            console.log("앤터 : ", text);
        }, 
        null
    );

    input.addEventListener("click", function() {
        // input 태그를 자신으로 설정
        keyboard.setInput(this);
        // 키패드 클릭 이벤트 설정
        keyboard.setClick(function(text) {
            console.log("input을 click한 후 : ", text);
        });
        // 앤터 이벤트 설정
        keyboard.setEnter(function(e) {
        	$(".searchbtn").click();
			
            console.log("앤터 : ", text);
        });
    });
</script>

	
</body>
</html>