<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<title>성적 증명서</title>
<jsp:include page="/layout/informationLayout/Transcript.jsp" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http_quiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/static/css/informationCss/성 적 증 명 서 _style.css">
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

<body onresize="parent.resizeTo(830,950)"
	onload="parent.resizeTo(830,950)">
	<%
	double scoreHeight = 8.11;
	pageContext.setAttribute("scoreHeight", scoreHeight);

	UserService userService = new UserServiceImpl();
	Users users = new Users();

	String studentId = (String) session.getAttribute("studentId");
	users.setStudentId(studentId);
	Users user = userService.Transcript(users);
	List<Score> scoreList = user.getScoreList();

	// 		List<Score> scoreMidList = scoreList.stream().filter( score -> score.getType().equals("Midterm") ).toList();
	// 		List<Score> scoreFinalList = scoreList.stream().filter( score -> score.getType().equals("Final") ).toList();
	List<Score> scoreMidList = new ArrayList<>();
	List<Score> scoreFinalList = new ArrayList<>();
	List<Course> courseList = user.getCourseList();

	for (int i = 0; i < scoreList.size(); i++) {
		Score item = scoreList.get(i);
		if (item.getType().equals("Midterm")) {
			scoreMidList.add(item);
		}
		if (item.getType().equals("Final")) {
			scoreFinalList.add(item);
		}
	}

	pageContext.setAttribute("scoreList", scoreList);
	pageContext.setAttribute("scoreMidList", scoreMidList);
	pageContext.setAttribute("scoreFinalList", scoreFinalList);
	pageContext.setAttribute("courseList", courseList);
	%>

	<div class="page" style="display: flex; justify-content: center;">
		<div class="hpa" style="width: 210mm; height: 285mm;">
			<div class="hcD" style="left: 25mm; top: 30mm;">
				<div class="hcI">
					<div class="hls ps12"
						style="line-height: 6.28mm; white-space: nowrap; left: 0mm; top: -0.35mm; height: 7.06mm; width: 160.01mm;">
						<span class="hrt cs5">성 적 증 명 서</span>
					</div>
					<div class="hls ps1"
						style="line-height: 2.79mm; white-space: nowrap; left: 0mm; top: 9mm; height: 3.53mm; width: 160.01mm;"></div>
					<div class="hls ps11"
						style="line-height: 216.45mm; white-space: nowrap; left: 0mm; top: 14.82mm; height: 216.45mm; width: 160.01mm;">
						<div class="htb"
							style="left: 0.49mm; width: 160.03mm; top: 0.49mm; height: 216.45mm; display: inline-block; position: relative; vertical-align: middle;">
							<svg class="hs" viewBox="-2.50 -2.50 165.03 221.45"
								style="left: -2.50mm; top: -2.50mm; width: 165.03mm; height: 221.45mm;">
							<path d="M0,0 L0,215.47"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M29.47,0 L29.47,42.34"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M29.47,57.75 L29.47,130.75"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M79.52,0 L79.52,42.34"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M79.52,42.33 L79.52,130.75"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M109.52,0 L109.52,42.34"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M109.52,57.75 L109.52,130.75"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M159.04,0 L159.04,215.47"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,0 L159.25,0"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,14.11 L159.25,14.11"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,28.22 L159.25,28.22"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,42.33 L159.25,42.33"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,57.75 L159.25,57.75"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,65.86 L159.25,65.86"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,73.97 L159.25,73.97"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,82.08 L159.25,82.08"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,90.19 L159.25,90.19"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,98.30 L159.25,98.30"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,106.41 L159.25,106.41"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,114.52 L159.25,114.52"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,122.63 L159.25,122.63"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,130.74 L159.25,130.74"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
							<path d="M-0.20,215.46 L159.25,215.46"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M159.04,0 L159.04,215.47"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M0,0 L0,215.47"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,215.46 L159.25,215.46"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
							<path d="M-0.20,0 L159.25,0"
									style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path></svg>
							<div class="hce"
								style="left: 0mm; top: 0mm; width: 29.47mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 24.95mm;">
											<span class="hrt cs9">소속</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 29.47mm; top: 0mm; width: 50.05mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps1"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;">
											<span class="hrt cs9">더 조은 대학교</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 79.52mm; top: 0mm; width: 30mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 25.48mm;">
											<span class="hrt cs9">학 번</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 109.52mm; top: 0mm; width: 49.52mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps1"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;">
											<span class="hrt cs9"><%=user.getStudentId()%></span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 0mm; top: 14.11mm; width: 29.47mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 24.95mm;">
											<span class="hrt cs9">학과</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 29.47mm; top: 14.11mm; width: 50.05mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps1"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;">
											<span class="hrt cs9"><%=user.getDepartment().getMajorName()%></span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 79.52mm; top: 14.11mm; width: 30mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 25.48mm;">
											<span class="hrt cs9">생년월일</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 109.52mm; top: 14.11mm; width: 49.52mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps15"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"><%=user.getBirth()%></div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 0mm; top: 28.22mm; width: 29.47mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 24.95mm;">
											<span class="hrt cs9">학적상태</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 29.47mm; top: 28.22mm; width: 50.05mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps14"
											style="padding-left: 1mm; line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"><%=user.getAcademicStatus()%></div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 79.52mm; top: 28.22mm; width: 30mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 25.48mm;">
											<span class="hrt cs9">메일</span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 109.52mm; top: 28.22mm; width: 49.52mm; height: 14.11mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI" style="top: 4.53mm;">
										<div class="hls ps0"
											style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 45mm;"><%=user.getMail()%></div>
									</div>
								</div>
							</div>
							<div class="left">
								<!-- 중간 타이틀 -->
								<div class="hce"
									style="left: 0mm; top: 42.33mm; width: 79.52mm; height: 15.42mm;">
									<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
										<div class="hcI" style="top: 4.04mm;">
											<div class="hls ps18"
												style="line-height: 5.52mm; white-space: nowrap; left: 0mm; top: -0.32mm; height: 6.35mm; width: 78.53mm;">
												<span class="hrt cs11">&nbsp;중간</span>
											</div>
										</div>
									</div>
								</div>

								<!-- 중간 성적 리스트 -->
								<c:forEach var="score" items="${ scoreMidList }"
									varStatus="status">
									<div class="hce"
										style="left: 0mm; top: ${ 58.75 + (scoreHeight * status.index) }mm; width: 29.47mm; height: 8.11mm;">
										<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
											<div class="hcI">
												<div class="hls ps11 score"
													style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">
													${ score.subjectScore }</div>
											</div>
										</div>
									</div>
									<div class="hce"
										style="left: 29.47mm; top: ${ 58.75 + (scoreHeight * status.index) }mm; width: 50.05mm; height: 8.11mm;">
										<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
											<div class="hcI">
												<div class="hls ps11"
													style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;">
													${ score.subjectName }</div>
											</div>
										</div>
									</div>
								</c:forEach>



							</div>
							<div class="right">

								<!-- 기말 타이틀 -->
								<div class="hce"
									style="left: 79.52mm; top: 42.33mm; width: 79.52mm; height: 15.42mm;">
									<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
										<div class="hcI" style="top: 4.04mm;">
											<div class="hls ps18"
												style="line-height: 5.52mm; white-space: nowrap; left: 0mm; top: -0.32mm; height: 6.35mm; width: 78.53mm;">
												<span class="hrt cs11">기말</span>
											</div>
										</div>
									</div>
								</div>

								<!-- 기말 성적 리스트 -->
								<c:forEach var="score" items="${ scoreFinalList }"
									varStatus="status">
									<div class="hce"
										style="left: 79.52mm; top: ${ 58.75 + (scoreHeight * status.index) }mm; width: 29.47mm; height: 8.11mm;">
										<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
											<div class="hcI">
												<div class="hls ps11 score"
													style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">
													${ score.subjectScore }</div>
											</div>
										</div>
									</div>
									<div class="hce"
										style="left: 109.52mm; top: ${ 58.75 + (scoreHeight * status.index) }mm; width: 50.05mm; height: 8.11mm;">
										<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
											<div class="hcI">
												<div class="hls ps11"
													style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;">
													${ score.subjectName }</div>
											</div>
										</div>
									</div>
								</c:forEach>

							</div>
							<div class="hce"
								style="left: 0mm; top: 130.74mm; width: 159.04mm; height: 40.63mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI">
										<div class="hls ps19"
											style="padding-left: 3.53mm; line-height: 6.28mm; white-space: nowrap; left: 0mm; top: -0.35mm; height: 7.06mm; width: 158.04mm;"></div>
										<div class="hls ps19"
											style="padding-left: 3.53mm; line-height: 6.28mm; white-space: nowrap; left: 0mm; top: 10.94mm; height: 7.06mm; width: 158.04mm;">
											<span class="hrt cs12">상기와 같이 현재 사실을 증명합니다.</span>
										</div>
										<div class="hls ps11"
											style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: 22.37mm; height: 4.06mm; width: 158.04mm;"></div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 0mm; top: 171.37mm; width: 159.04mm; height: 7.50mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI">
										<div class="hls ps18"
											style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 158.04mm;">
											<span class="hrt cs6" id="dateOutput"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="hce"
								style="left: 0mm; top: 178.87mm; width: 159.04mm; height: 36.59mm;">
								<div class="hcD" style="left: 0.49mm; top: 0.49mm;">
									<div class="hcI">
										<div class="hls ps16"
											style="line-height: 3.59mm; white-space: nowrap; left: 0mm; top: -0.22mm; height: 4.41mm; width: 158.04mm;">
											<span class="htC"
												style="left: 1.10mm; width: 11.91mm; height: 100%;"></span>
										</div>
										<div class="hls ps17"
											style="line-height: 11.64mm; white-space: nowrap; left: 0mm; top: 8.23mm; height: 11.64mm; width: 158.04mm;">
											<span class="hrt cs10">더 조 은 대 학 교 총 장</span>
										</div>
									</div>
								</div>
							</div>

							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 28.22mm; width: 49.52mm; height: 14.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI" style="top: 4.53mm;"> -->
							<!-- 									<div class="hls ps0" -->
							<%-- 										style="line-height: 3.27mm; white-space: nowrap; left: 1.76mm; top: -0.20mm; height: 4.06mm; width: 45mm;"><%=user.getMail()%></div> --%>
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 42.33mm; width: 79.52mm; height: 15.42mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI" style="top: 4.04mm;"> -->
							<!-- 									<div class="hls ps18" -->
							<!-- 										style="line-height: 5.52mm; white-space: nowrap; left: 0mm; top: -0.32mm; height: 6.35mm; width: 78.53mm;"> -->
							<!-- 										<span class="hrt cs11">&nbsp;중간</span> -->
							<!-- 									</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 42.33mm; width: 79.52mm; height: 15.42mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI" style="top: 4.04mm;"> -->
							<!-- 									<div class="hls ps18" -->
							<!-- 										style="line-height: 5.52mm; white-space: nowrap; left: 0mm; top: -0.32mm; height: 6.35mm; width: 78.53mm;"> -->
							<!-- 										<span class="hrt cs11">기말</span> -->
							<!-- 									</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 57.75mm; width: 29.47mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">1</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 29.47mm; top: 57.75mm; width: 50.05mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 57.75mm; width: 30mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 29.01mm;">2</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 57.75mm; width: 49.52mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 65.86mm; width: 29.47mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">3</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 29.47mm; top: 65.86mm; width: 50.05mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 65.86mm; width: 30mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 29.01mm;">4</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 65.86mm; width: 49.52mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 "  -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 73.97mm; width: 29.47mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">5</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 29.47mm; top: 73.97mm; width: 50.05mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 73.97mm; width: 30mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 29.01mm;">6</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 73.97mm; width: 49.52mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 82.08mm; width: 29.47mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">7</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 29.47mm; top: 82.08mm; width: 50.05mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 82.08mm; width: 30mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 29.01mm;">8</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 82.08mm; width: 49.52mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 90.19mm; width: 29.47mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">9</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 29.47mm; top: 90.19mm; width: 50.05mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 90.19mm; width: 30mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 29.01mm;">10</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 90.19mm; width: 49.52mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 98.30mm; width: 29.47mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">11</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 29.47mm; top: 98.30mm; width: 50.05mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 98.30mm; width: 30mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 29.01mm;">12</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 98.30mm; width: 49.52mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 106.41mm; width: 29.47mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">13</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 29.47mm; top: 106.41mm; width: 50.05mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 106.41mm; width: 30mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 29.01mm;">14</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 106.41mm; width: 49.52mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 114.52mm; width: 29.47mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">15</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 29.47mm; top: 114.52mm; width: 50.05mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 114.52mm; width: 30mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 29.01mm;">16</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 114.52mm; width: 49.52mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 122.63mm; width: 29.47mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 28.48mm;">17</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 29.47mm; top: 122.63mm; width: 50.05mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 49.05mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 79.52mm; top: 122.63mm; width: 30mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11 score" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 29.01mm;">18</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 109.52mm; top: 122.63mm; width: 49.52mm; height: 8.11mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 48.53mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 130.74mm; width: 159.04mm; height: 40.63mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps19" -->
							<!-- 										style="padding-left: 3.53mm; line-height: 6.28mm; white-space: nowrap; left: 0mm; top: -0.35mm; height: 7.06mm; width: 158.04mm;"></div> -->
							<!-- 									<div class="hls ps19" -->
							<!-- 										style="padding-left: 3.53mm; line-height: 6.28mm; white-space: nowrap; left: 0mm; top: 10.94mm; height: 7.06mm; width: 158.04mm;"> -->
							<!-- 										<span class="hrt cs12">상기와 같이 현재 사실을 증명합니다.</span> -->
							<!-- 									</div> -->
							<!-- 									<div class="hls ps11" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: 22.37mm; height: 4.06mm; width: 158.04mm;"></div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 171.37mm; width: 159.04mm; height: 7.50mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps18" -->
							<!-- 										style="line-height: 3.27mm; white-space: nowrap; left: 0mm; top: -0.20mm; height: 4.06mm; width: 158.04mm;"> -->
							<!-- 										<span class="hrt cs6">2024년 4월 8일</span> -->
							<!-- 									</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
							<!-- 						<div class="hce" -->
							<!-- 							style="left: 0mm; top: 178.87mm; width: 159.04mm; height: 36.59mm;"> -->
							<!-- 							<div class="hcD" style="left: 0.49mm; top: 0.49mm;"> -->
							<!-- 								<div class="hcI"> -->
							<!-- 									<div class="hls ps16" -->
							<!-- 										style="line-height: 3.59mm; white-space: nowrap; left: 0mm; top: -0.22mm; height: 4.41mm; width: 158.04mm;"> -->
							<!-- 										<span class="htC" -->
							<!-- 											style="left: 1.10mm; width: 11.91mm; height: 100%;"></span> -->
							<!-- 									</div> -->
							<!-- 									<div class="hls ps17" -->
							<!-- 										style="line-height: 11.64mm; white-space: nowrap; left: 0mm; top: 8.23mm; height: 11.64mm; width: 158.04mm;"> -->
							<!-- 										<span class="hrt cs10">더 조 은 대 학 교 총 장</span> -->
							<!-- 									</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 						</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr style="margin-top: 60px;" >
	
	<div class="page" style="display: flex; justify-content: center; gap: 100px; margin-top: 60px;
	margin-bottom: 60px;">
	
		<div>
		<input class="button" type=button style="font-size: 40px; border-radius: 20px;" onclick="winPrint()" value="인쇄하기" >
		</div>
		
		<div>
		<input class="button" type=button style="font-size: 40px; border-radius: 20px;" onclick="closeCurrentWindow()" value="돌아가기">
		</div>
			
	</div>



	<jsp:include page="/layout/script.jsp" />

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
	</script>
</body>




</html>