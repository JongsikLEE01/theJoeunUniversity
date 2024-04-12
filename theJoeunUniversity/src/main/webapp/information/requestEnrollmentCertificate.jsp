<%@page import="information.DTO.Department"%>
<%@page import="information.DTO.Course"%>
<%@page import="information.DTO.Score"%>
<%@page import="information.DTO.Users"%>
<%@page import="information.Service.UserServiceImpl"%>
<%@page import="information.Service.UserService"%>
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
<title>재학 증명서</title>
<%-- <jsp:include page="/layout/link.jsp" /> --%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/static/css/informationCss/재 학 증 명 서 _style.css">
		<style>
			@media print {
			    @page {
			        size: 21cm 29.7cm; /* A4 */
			        margin: 0;
			    }
			    html, body {
			        border: 0;
			        margin: 0;
			        padding: 0;
			    }
			}
			
			{

			.button input[type="button"] {
				
				margin: 0;
			    padding: 0;
			    outline: none;
				    
				background-color: gray;
				color: #FFFFFF;
				
			}
		</style>

</head>
<body onresize="parent.resizeTo(700,950)"
	onload="parent.resizeTo(700,950)">

	<%
	UserService userService = new UserServiceImpl();
	Users users = new Users();
	String studentId = (String) session.getAttribute("studentId");
	users.setStudentId(studentId);
	Users user = userService.Certificate(users);
	%>

	<div class="page" style="display: flex; justify-content: center;">
		<div class="hpa" style="width: 210mm; height: 285mm;">
			<div class="hcD" style="left: 25mm; top: 30mm;">
				<div class="hcI">
					<div class="hls ps12"
						style="line-height: 6.28mm; white-space: nowrap; left: 0mm; top: -0.35mm; height: 7.06mm; width: 160.01mm;">
						<span class="hrt cs5">재 학 증 명 서</span>
					</div>
					<div class="hls ps1"
						style="line-height: 2.79mm; white-space: nowrap; left: 0mm; top: 9mm; height: 3.53mm; width: 160.01mm;"></div>
					<div class="hls ps11"
						style="line-height: 204.91mm; white-space: nowrap; left: 0mm; top: 14.82mm; height: 204.91mm; width: 160.01mm;">
						<div class="htb"
							style="left: 0.49mm; width: 160.03mm; top: 0.49mm; height: 204.91mm; display: inline-block; position: relative; vertical-align: middle;">
							<svg class="hs" viewBox="-2.50 -2.50 165.03 209.91"
								style="left: -2.50mm; top: -2.50mm; width: 165.03mm; height: 209.91mm;">
							<path d="M0,0 L0,203.92"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M22.48,0 L22.48,66.16"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M79.05,0 L79.05,33.08"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M103.53,0 L103.53,33.08"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M159.04,0 L159.04,203.92"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,0 L159.25,0"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,16.54 L159.25,16.54"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,33.08 L159.25,33.08"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,49.61 L159.25,49.61"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,66.15 L159.25,66.15"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,203.92 L159.25,203.92"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M159.04,0 L159.04,203.92"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M0,0 L0,203.92"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,203.92 L159.25,203.92"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,0 L159.25,0"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path></svg>
							<div class="hce"
								style="left: 0mm; top: 0mm; width: 22.48mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 17.96mm;">
											<span class="hrt cs10">소속</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 22.48mm; top: 0mm; width: 56.57mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps1"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 55.58mm;">
											<span class="hrt cs10">더 조은 대학교</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 79.05mm; top: 0mm; width: 24.48mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 19.95mm;">
											<span class="hrt cs10">학 번</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 103.53mm; top: 0mm; width: 55.51mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps1"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 54.51mm;">
											<span class="hrt cs10"><%=user.getStudentId()%></span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 0mm; top: 16.54mm; width: 22.48mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 17.96mm;">
											<span class="hrt cs10">학과</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 22.48mm; top: 16.54mm; width: 56.57mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps1"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 55.58mm;">
											<span class="hrt cs10"><%=user.getDepartment().getMajorName()%></span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 79.05mm; top: 16.54mm; width: 24.48mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 19.95mm;">
											<span class="hrt cs10">생년월일</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 103.53mm; top: 16.54mm; width: 55.51mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps16"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 54.51mm;">
											<%=user.getBirth()%>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 0mm; top: 33.08mm; width: 22.48mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 17.96mm;">
											<span class="hrt cs10">학적상태</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 22.48mm; top: 33.08mm; width: 136.56mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps15"
											style="padding-left: 1mm;; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 135.57mm;">
											<%=user.getAcademicStatus()%></div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 0mm; top: 49.61mm; width: 22.48mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 17.96mm;">
											<span class="hrt cs10">메일</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 22.48mm; top: 49.61mm; width: 136.56mm; height: 16.54mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 5.75mm;">
										<div class="hls ps1"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 135.57mm;">
											<span class="hrt cs10"><%=user.getMail()%></span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 0mm; top: 66.15mm; width: 159.04mm; height: 96.59mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI">
										<div class="hls ps11"
											style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 158.04mm;"></div>
										<div class="hls ps11"
											style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: 6.28mm; height: 4.06mm; width: 158.04mm;"></div>
										<div class="hls ps11"
											style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: 12.76mm; height: 4.06mm; width: 158.04mm;"></div>
										<div class="hls ps11"
											style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: 19.25mm; height: 4.06mm; width: 158.04mm;"></div>
										<div class="hls ps14"
											style="padding-left: 3.53mm; line-height: 5.16mm; white-space: nowrap; left: 0mm; top: 25.64mm; height: 6mm; width: 158.04mm;">
											<span class="hrt cs11">상기와 같이 현재 재학의 사실을 증명합니다.</span>
										</div>
										<div class="hls ps14"
											style="padding-left: 3.53mm; line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 35.34mm; height: 3.88mm; width: 158.04mm;"></div>
										<div class="hls ps14"
											style="padding-left: 3.53mm; line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 41.55mm; height: 3.88mm; width: 158.04mm;"></div>
										<div class="hls ps17"
											style="padding-left: 3.53mm; line-height: 3.10mm; white-space: nowrap; left: 0mm; top: 47.76mm; height: 3.88mm; width: 158.04mm;">
											<span class="htC"
												style="left: 0.97mm; width: 8.64mm; height: 100%;"></span>
										</div>
										<div class="hls ps11"
											style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: 53.95mm; height: 4.06mm; width: 158.04mm;"></div>
										<div class="hls ps11"
											style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: 60.44mm; height: 4.06mm; width: 158.04mm;"></div>
										<div class="hls ps11"
											style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: 66.92mm; height: 4.06mm; width: 158.04mm;">
											<span class="hrt cs7" id="dateOutput"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 0mm; top: 162.75mm; width: 159.04mm; height: 41.17mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI">
										<div class="hls ps18"
											style="line-height: 3.59mm; white-space: nowrap; left: 0mm; top: -0.22mm; height: 4.41mm; width: 158.04mm;">
											<span class="htC"
												style="left: 1.10mm; width: 11.91mm; height: 100%;"></span>
										</div>
										<div class="hls ps19"
											style="line-height: 11.29mm; white-space: nowrap; left: 0mm; top: 8.25mm; height: 11.29mm; width: 158.04mm;">
											<span class="hrt cs12">더 조 은 대 학 교 총 장</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<hr style="margin-top: 60px;" >
	
	<div class="page" style="display: flex; justify-content: center; gap: 100px; margin-top: 10px;
	margin-bottom: 60px;">
	
		<div>
		<input class="button" type=button style="font-size: 40px; border-radius: 20px;" onclick="winPrint()" value="인쇄하기" >
		</div>
		
		<div>
		<input class="button" type=button style="font-size: 40px; border-radius: 20px;" onclick="closeCurrentWindow()" value="돌아가기">
		</div>
			
	</div>
	
	



	<script>
		function winPrint() {
			window.print();
		}

		var now = new Date();
		var year = now.getFullYear();
		var month = now.getMonth() + 1;
		var day = now.getDate();

		if (month < 10) {
			month = '0' + month;
		}
		if (day < 10) {
			day = '0' + day;
		}

		var formattedDate = year + '년 ' + month + '월 ' + day + '일';
		document.getElementById("dateOutput").innerText = formattedDate;
		
		function closeCurrentWindow() {
		    window.close();
		}
	</script>

</body>
</html>