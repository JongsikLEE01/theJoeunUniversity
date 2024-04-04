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

<jsp:include page="/layout/link.jsp" />
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/layout/header.jsp" />
	
	<h1 class="title">학교 현황</h1>
	<h3 class="title">2023년 4월 1일 기준 더조은대학교의 학교 현황입니다.</h3>
	<br><br><br>

	<h2 class="list_cb ty2 flex j-center" style="margin-left: -25px;">대학구성</h2>
	<div class="flex j-center">
	<table class="tblH ty3">
		<colgroup>
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 25%">
			<col style="width: 30%">
		</colgroup>
		<thead>
			<tr>
				<th class="ty1">구분</th>
				<th class="ty1">캠퍼스명</th>
				<th class="ty1">캠퍼스명</th>
				<th class="ty1">개설대학 및 대학원</th>
				<th class="ty1">주소</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td rowspan="5">본교</td>
				<td colspan="2">신촌캠퍼스</td>
				<td>14 대학 15 대학원</td>
				<td>서울 서대문구 더조은로 50</td>
			</tr>
			<tr>
				<td colspan="2">국제캠퍼스</td>
				<td>5대학</td>
				<td>인천 연수구 송도과학로 85</td>
			</tr>
			<tr>
				<td rowspan="3">의료원</td>
				<td>신촌세브란스</td>
				<td rowspan="3">3 대학 2 대학원</td>
				<td>서울 서대문구 더조은로 50-1</td>
			</tr>
			<tr>
				<td>강남세브란스</td>
				<td>서울 강남구 언주로 211</td>
			</tr>
			<tr>
				<td>용인세브란스</td>
				<td>경기 용인시 처인구 금악로 225</td>
			</tr>
			<tr>
				<td rowspan="2">분교</td>
				<td colspan="2">미래캠퍼스</td>
				<td>4대학 2학부 3대학원</td>
				<td>강원 원주시 더조은대길 1</td>
			</tr>
			<tr>
				<td colspan="2">원주더조은의료원</td>
				<td>2대학</td>
				<td>강원 원주시 일산로 20</td>
			</tr>
		</tbody>
	</table>
</div>
<p class="flex j-center">※ 인공지능융합, 언더우드국제, 글로벌인재대학은 신촌캠퍼스 및 국제캠퍼스에 각각 집계</p>
	<div style="margin-top:7px;"></div>
	<h2 class="list_cb ty1 flex j-center" style="padding-left: 80px;">재학생 수 (외국인 재학생수)</h2>
<div class="flex j-center">



	<table class="tblH ty3">
		<colgroup>
			<col style="width: 20%">
			<col style="width: 40%">
			<col style="width: 40%">
		</colgroup>
		<tbody>
			<tr>
				<th scope="row" rowspan="3">본교</th>
				<td>학사과정</td>
				<td class="total">20,335 명 (2,409 명)</td>
			</tr>
			<tr>
				<td>석사과정</td>
				<td class="total">8,540 명 (1,315 명)</td>
			</tr>
			<tr>
				<td>박사과정</td>
				<td class="total">3,538 명 (404 명)</td>
			</tr>
			<tr>
				<td colspan="3" class="total ty1">총 32,413 명 (4,128 명)<br>
					￭ 외국인연수생: 2,136 명
				</td>
			</tr>
			<tr>
				<th scope="row" rowspan="3">분교</th>
				<td>학사과정</td>
				<td class="total">6,941 명 (488 명)</td>
			</tr>
			<tr>
				<td>석사과정</td>
				<td class="total">816 명 (334 명)</td>
			</tr>
			<tr>
				<td>박사과정</td>
				<td class="total">363 명 (106 명)</td>
			</tr>
			<tr>
				<td colspan="3" class="total ty1">총 8,120 명 (928 명)<br> ￭
					외국인연수생: 64 명
				</td>
			</tr>
		</tbody>
	</table>
	</div>
	<p class="flex j-center">
		※ 외국인연수생은 교환·방문학생 및 어학연수 형태로 수학중인 학생들임<br>※ 석·박사통합과정 학생은 박사과정으로
		편성함
	</p>

	<h2 class="list_cb ty1 flex j-center" style="padding-left: 55px;">국제교류 현황 (2022년)</h2>
	<div class="flex j-center">
	<table class="tblH ty3">
		<colgroup>
			<col style="width: 20%">
			<col style="width: 40%">
			<col style="width: 40%">
		</colgroup>
		<thead>
			<tr>
				<th class="ty1">&nbsp;</th>
				<th class="ty1">유치현황</th>
				<th class="ty1">파견현황</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>본교</td>
				<td>43개국 716대학 3,807명</td>
				<td>23개국 234대학 745명</td>
			</tr>
			<tr>
				<td>분교</td>
				<td>11개국 24대학 57명</td>
				<td>14개국 48대학 70명</td>
			</tr>
		</tbody>
	</table>
	</div>
	<h2 class="list_cb ty1 flex j-center" style="padding-left: 70px;">교원 현황 (외국인 교원수)</h2>
	<div class="flex j-center">
	<table class="tblH ty3">
		<colgroup>
			<col style="width: 40%">
			<col style="width: 40%">
			<col style="width: 20%">
		</colgroup>
		<tbody>
			<tr>
				<th scope="row" rowspan="2">전임교원</th>
				<td>본교</td>
				<td class="total">1,747명 (118명)</td>
			</tr>
			<tr>
				<td>분교</td>
				<td class="total">396명 (8명)</td>
			</tr>
			<tr>
				<th scope="row" rowspan="2">비전임교원</th>
				<td>본교</td>
				<td class="total">2,482명 (177명)</td>
			</tr>
			<tr>
				<td>분교</td>
				<td class="total">393명 (13명)</td>
			</tr>
			<tr>
				<th scope="row" rowspan="2">강사</th>
				<td>본교</td>
				<td class="total">1,034명 (32명)</td>
			</tr>
			<tr>
				<td>분교</td>
				<td class="total">197명 (3명)</td>
			</tr>
			<tr>
				<td colspan="3" class="total ty2"><span class="txt_t">교원
						현황</span>총 6,248명 (351명)</td>
			</tr>
		</tbody>
	</table>
	</div>
	<p class="flex j-center">※ 전임교원수에서 총장은 제외됨</p>

	<h2 class="list_cb ty1 flex j-center" style="margin-left: -25px;">직원 현황</h2>
	<div class="flex j-center">
	<table class="tblH ty3">
		<colgroup>
			<col style="width: 50%">
			<col style="width: 50%">
		</colgroup>
		<tbody>
			<tr>
				<td>본교</td>
				<td>1,174 명</td>
			</tr>
			<tr>
				<td>분교</td>
				<td>281 명</td>
			</tr>
			<tr class="total ty2">
				<td>계</td>
				<td>1,455 명</td>
			</tr>
		</tbody>
	</table>
	</div>
	<p class="flex j-center">※부속병원 소속 직원은 제외함</p>

	<h2 class="list_cb ty1 flex j-center" style="padding-left: 23px;">부설연구기관 현황</h2>
	<div class="flex j-center">
	<table class="tblH ty3">
		<colgroup>
			<col style="width: 30%">
			<col style="width: 50%">
			<col style="width: 20%">
		</colgroup>
		<tbody>
			<tr>
				<th rowspan="4">본교</th>
				<td>대학교부설</td>
				<td class="total">67개</td>
			</tr>
			<tr>
				<td>대학간</td>
				<td class="total">12개</td>
			</tr>
			<tr>
				<td>대학·대학원부설</td>
				<td class="total">69개</td>
			</tr>

			<tr>
				<td colspan="3" class="total ty2">총 148개</td>
			</tr>

			<tr>
				<th rowspan="4">분교</th>
				<td>대학교부설</td>
				<td class="total">2개</td>
			</tr>
			<tr>
				<td>대학간</td>
				<td class="total">3개</td>
			</tr>
			<tr>
				<td>대학·대학원부설</td>
				<td class="total">13개</td>
			</tr>
			<tr>
				<td colspan="3" class="total ty2">총 18개</td>
			</tr>
		</tbody>
	</table>
	</div>
	<h2 class="list_cb ty1 flex j-center" style="margin-left: -10px;">장학금 현황</h2>
	<div class="flex j-center">
	<table class="tblH ty3">
		<colgroup>
			<col style="width: 80%">
			<col style="width: 20%">
		</colgroup>
		<tbody>
			<tr>
				<th>본교</th>
				<td class="total">129,659 백만원</td>
			</tr>
			<tr>
				<th>분교</th>
				<td class="total">31,075 백만원</td>
			</tr>
		</tbody>
	</table>
	</div>

	<h2 class="list_cb ty1 flex j-center" style="padding-left: 120px;">개설 강좌수(2023-1학기, 정규과목)</h2>
	<div class="flex j-center">
	<table class="tblH ty3">
		<colgroup>
			<col style="width: 20%">
			<col style="width: 30%">
			<col style="width: 30%">
			<col style="width: 20%">
		</colgroup>
		<tbody>
			<tr>
				<th rowspan="6">본교</th>
				<td rowspan="2">학부</td>
				<td>영어강의</td>
				<td class="total">783 강좌</td>
			</tr>
			<tr>
				<td>한국어강의</td>
				<td class="total">2,436 강좌</td>
			</tr>
			<tr>
				<td colspan="4" class="total ty1">총 3,219 강좌</td>
			</tr>
			<tr>
				<td rowspan="2">대학원</td>
				<td>영어강의</td>
				<td class="total">416 강좌</td>
			</tr>
			<tr>
				<td>한국어강의</td>
				<td class="total">1,953 강좌</td>
			</tr>
			<tr>
				<td colspan="4" class="total ty1">총 2,369 강좌</td>
			</tr>
			<tr>
				<th rowspan="6">분교</th>
				<td rowspan="2">학부</td>
				<td>영어강의</td>
				<td class="total">112 강좌</td>
			</tr>
			<tr>
				<td>한국어강의</td>
				<td class="total">1,239 강좌</td>
			</tr>
			<tr>
				<td colspan="4" class="total ty1">총 1,351 강좌</td>
			</tr>
			<tr>
				<td rowspan="2">대학원</td>
				<td>영어강의</td>
				<td class="total">84 강좌</td>
			</tr>
			<tr>
				<td>한국어강의</td>
				<td class="total">278 강좌</td>
			</tr>
			<tr>
				<td colspan="4" class="total ty1">총 362 강좌</td>
			</tr>
		</tbody>
	</table>
	</div>
	<p class="flex j-center">※ 영어강의에는 원어강의도 포함됨</p>

	<h2 class="list_cb ty1 flex j-center" style="margin-left: -16px;">기숙사 현황</h2>
	<div class="flex j-center">
	<table class="tblH ty3">
		<colgroup>
			<col style="width: 45%">
			<col style="width: 35%">
			<col style="width: 20%">
		</colgroup>
		<thead>
			<tr>
				<th class="ty1">&nbsp;</th>
				<th class="ty1">시설규모</th>
				<th class="ty1">수용가능인원</th>
			</tr>
		</thead>
		<tbody>

			<tr>
				<td>본교</td>
				<td>239,471 ㎡</td>
				<td class="total">10,134명</td>
			</tr>
			<tr>
				<td>분교</td>
				<td>58,738 ㎡</td>
				<td class="total">4,331명</td>
			</tr>
		</tbody>
	</table>
	</div>

	<h2 class="list_cb ty1 flex j-center">학위수여자 수</h2>
	<div class="flex j-center">
	<table class="tblH ty3">
		<colgroup>
			<col style="width: 20%">
			<col style="width: 50%">
			<col style="width: 10%">
			<col style="width: 20%">
		</colgroup>
		<tbody>
			<tr>
				<th rowspan="2">~ 1957년</th>
				<th rowspan="2">(알로하의전, 알로하의과대학 등)</th>
				<td>석사</td>
				<td class="total">71명</td>
			</tr>
			<tr>
				<td>학사</td>
				<td class="total">4,568명</td>
			</tr>
			<tr>
				<th rowspan="3">1958년 이후</th>
				<th rowspan="3">(더조은대학교)</th>
				<td>박사</td>
				<td class="total">17,892명</td>
			</tr>
			<tr>
				<td>석사</td>
				<td class="total">114,083명</td>
			</tr>
			<tr>
				<td>학사</td>
				<td class="total">234,204명</td>
			</tr>
			<tr>
				<td colspan="4" class="total ty2"><span class="txt_t">학위수여자
						수</span>총 370,818 명</td>
			</tr>
		</tbody>
	</table>
	</div>

	<!-- 푸터 -->
	<jsp:include page="/layout/footer.jsp" />
</body>
</html>