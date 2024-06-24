# **프로젝트 : theJoeunUniversity** kiosk
![image](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/1597f479-a768-4956-a128-6823bad836f9)
<br><br>

## 목차

- 프로젝트 개요
- 프로젝트 구조
- 프로젝트 팀 구성 및 역할
- 프로젝트 수행 절차 및 방법
- 프로젝트 수행 경과
- 핵심기능 코드 리뷰
- 자체 평가 의견

## 프로젝트 개요
---


### 프로젝트 주제

---

- 누구나 쉽게 이용 가능한 더조은 대학 키오스크 시스템

### 주제 선정 배경

---

- 성장하는 IOT 시장을 노려서 개발
- 누구나 제한 없이 사용하기 위한 키오스크는 어떻게 개발되어야 할까?
- 어려운 증명서 발급을 어떻게 손쉽게 할 수 있을까?

### 기획 의도

---

- 누구나 쉽게 이용 가능한 키오스크
- 누구나 공평하게 이용 가능한 키오스크
- 교내의 정보를 한 눈에 알 수 있고, 어려운 절차 없이 이용 가능한 키오스크

### 활용방안

---

- 학생들은 키오스크를 통해 학사 정보를 손쉽게 조회하고 각종 증명서를 발급받을 수 있습니다. 이를 통해 번거로운 절차와 대기 시간을 줄이고, 정보의 접근성을 향상시킬 수 있습니다.
- 키오스크를 활용하여 학교의 다양한 시설과 프로그램에 대한 정보를 제공할 수 있습니다. 새로운 학생들은 학교의 역사, 학과 소개, 공지 사항 등을 쉽게 알아갈 수 있습니다.
- 학생들은 키오스크를 통해 시험 일정이나 학기 중요 일정을 확인할 수 있습니다. 이를 통해 학생들은 학업 계획을 세우고 시간을 효율적으로 활용할 수 있습니다.

### 기대효과

---

- 학생들은 언제든지 필요한 정보를 키오스크를 통해 손쉽게 얻을 수 있습니다. 이는 학생들의 학교 생활을 보다 편리하게 만들어줄 것입니다.
- 키오스크를 통해 정보를 얻는 과정이 간편해지고, 번거로운 절차와 대기 시간을 줄일 수 있습니다. 이는 학생들의 시간을 절약할 수 있습니다
- 키오스크를 통해 학교 관련 정보를 쉽게 얻을 수 있으므로, 학교와 학생들 간의 정보 공유가 원활해집니다. 이는 학생들의 학교 생활에 대한 이해도를 높이고 투명성을 제고할 것입니다.

## 프로젝트 구조

---

### 주요기능

---

- 로그인한 학생이 각 종 증명서를 발급
- 로그인 없이 일정, 공지사항, 학교 소개들을 모두 볼 수 있음
- 각 종 정보를 다루는 관리자

### 기타 기능

---

- 유저
    - 학교 소개
        - 학교 이념
        - 학교 현황
        - 주변 위치
        - 대학 약도
        - 상징(UI)
    - 학사 일정
        - 학사 일정 조회
    - 공지 사항
        - 게시글 조회
        - 게시글 검색
    - 로그인
        - 증명서 발급
- 관리자
    - 학사 일정
        - 학사 일정 등록, 수정, 삭제, 조회
    - 공지 사항
        - 공지 사항 등록, 수정, 삭제, 조회
    - 학생 관리
        - 학생 등록, 수정, 삭제, 조회

### 메뉴구조도

---

- 구조도
    
    ![프로젝트구조.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/37105633-5c6d-48cd-95b5-a4721ff9cfb9/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%EA%B5%AC%EC%A1%B0.png)
    
    ![프로젝트구조2.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/f25b7e85-f183-4cff-abcc-6a77605ee5ae/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%EA%B5%AC%EC%A1%B02.png)
    
    ![프로젝트구조3.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/5403ea2a-2cc8-4cb3-8ce3-bb7a033453b8/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%EA%B5%AC%EC%A1%B03.png)
    

## 프로젝트 팀 구성 및 역할

---

- 인원 : 5명
- 이종식 (팀장)
    - 학사 일정 기능 구현 및 디자인
    - 캘린더 DB 설계
    - 형상 관리 도구 관리
- 오은아 (팀원)
    - 메인 페이지 및 학교 소개 관련 페이지 디자인
    - Kakaomap 기능 구현
- 홍준범 (팀원)
    - 학생 정보 및 기능 구현 및 디자인
    - 학생 DB 설계
- 홍 성 (팀원)
    - 관리자 페이지 기능 구현 및 디자인
- 정주빈 (팀원)
    - 공지사항 기능 구현 및 디자인
    - 게시판 DB 설계

## 프로젝트 수행 절차 및 방법

---

### 수행 절차

---

![수행절차.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/6d6e8641-0c46-4b1d-b11b-075f25d72b29/%EC%88%98%ED%96%89%EC%A0%88%EC%B0%A8.png)

### 수행 방법

---

- 사용 언어 : Java, Oracle, HTML5, CSS, JavaScript, jQuery, JSP/Servlet, JSON
- IDE : elipse, VSCode
- 서버 환경 : TOMCAT 8.5
- CI/CD : Git, GitHub
- 라이브러리 : Kakaomap, Jquery-simple, hangul

## 프로젝트 수행 경과

---

### 요구사항 정의서

---

- 요구사항 정의서
    
    ![요구사항정의서.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/a50e890a-41cd-4033-91df-7d03f5a6bbb4/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%EC%A0%95%EC%9D%98%EC%84%9C.png)
    

### 기능 정의서

---

- 기능정의서
    
    ![기능정의서.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/0d7dc33f-216a-4026-8ca3-ac8cf2ce0119/%EA%B8%B0%EB%8A%A5%EC%A0%95%EC%9D%98%EC%84%9C.png)
    
    ![기능정의서2.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/ff525b0e-986f-4cc3-99be-fed724fa003f/%EA%B8%B0%EB%8A%A5%EC%A0%95%EC%9D%98%EC%84%9C2.png)
    

### ERD

---

- ERD
    
    ![ERD.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/4696d6c3-13ce-4aa6-b6fb-ca0c2c89ba05/ERD.png)
    

### 테이블 정의서

---

- 테이블 정의서
    
    ![테이블정의서1.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/c20bc0e3-6701-4507-b7d5-2ba3d5f4825f/%ED%85%8C%EC%9D%B4%EB%B8%94%EC%A0%95%EC%9D%98%EC%84%9C1.png)
    
    ![테이블정의서2.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/796309dc-31a5-473c-8f3a-933a15a1661f/%ED%85%8C%EC%9D%B4%EB%B8%94%EC%A0%95%EC%9D%98%EC%84%9C2.png)
    
    ![테이블정의서3.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/71d44866-9f7e-43a5-89de-d07b16c14107/%ED%85%8C%EC%9D%B4%EB%B8%94%EC%A0%95%EC%9D%98%EC%84%9C3.png)
    
    ![테이블정의서4.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/c1b38c54-a218-40fa-8208-61dee10c46de/%ED%85%8C%EC%9D%B4%EB%B8%94%EC%A0%95%EC%9D%98%EC%84%9C4.png)
    
    ![테이블정의서5.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/98858435-e228-4248-85bc-ea299f14f97a/%ED%85%8C%EC%9D%B4%EB%B8%94%EC%A0%95%EC%9D%98%EC%84%9C5.png)
    
    ![테이블정의서6.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/f8bba9ee-2522-44b2-bc28-dcac077af9c7/%ED%85%8C%EC%9D%B4%EB%B8%94%EC%A0%95%EC%9D%98%EC%84%9C6.png)
    
    ![테이블정의서7.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/42715168-92cb-4df3-ac3b-f2e94ac55fcf/%ED%85%8C%EC%9D%B4%EB%B8%94%EC%A0%95%EC%9D%98%EC%84%9C7.png)
    

### 프로젝트 실제 화면 UI

---

- 메인화면
    
    ![구현화면1.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/f2789b66-7384-4f13-9f7a-1062889b0db7/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B41.png)
    
    ![구현화면2.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/88e6c48c-1b21-4f4b-bba2-f9446c32d578/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B42.png)
    
- 학교 소개
    
    ![구현화면3.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/a32ffb2d-2648-4254-be20-739b49e929d9/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B43.png)
    
    ![구현화면4.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/9b52f221-a065-4352-91d7-083bdaa061c5/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B44.png)
    
    ![구현화면5.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/d62d1b49-3e45-4d14-84fb-b4189f6be2b6/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B45.png)
    
    ![구현화면6.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/d1d82bd2-174d-4cd2-8c12-be342b9f159f/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B46.png)
    
    ![구현화면7.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/350ec5e7-0bf7-4903-be71-64a9fdfc6b91/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B47.png)
    
    ![구현화면8.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/3c4d34ba-0192-4c27-a580-e18a815acccc/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B48.png)
    
- 학생 정보
    
    ![구현화면10.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/9d36c3a8-f77e-4ea4-b4ff-1d8826d25d73/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B410.png)
    
    ![구현화면11.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/5fef25a3-dea3-4979-9c61-103a57a0086a/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B411.png)
    
    ![구현화면12.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/8fa3911d-e241-4cb7-9b5a-a62da742538f/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B412.png)
    
- 공지 사항
    
    ![구현화면13.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/b2b06e52-610e-4c04-9744-7f87022f6a6b/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B413.png)
    
    ![구현화면14.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/5fbc4c16-b459-4e00-9380-aa40a589e3fe/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B414.png)
    
- 학사 일정
    
    ![구현화면9.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/57ddb06e-2b12-4c79-a1ef-bbc091d48713/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B49.png)
    
- 관리자 페이지
    
    ![구현화면15.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/f9e332fd-af65-48a7-a06a-803902170b86/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B415.png)
    
    ![구현화면16.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/4d6f9689-34e7-4000-8c3b-1941d9d01d5a/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B416.png)
    
    ![구현화면17.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/809854c7-7b3f-4805-b196-8e40b2b76766/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B417.png)
    
    ![구현화면18.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/86b1d9d8-3dd5-41d6-8c77-4f84b77ee4ef/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B418.png)
    
    ![구현화면19.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/4a5f4fe1-7b10-4d56-85f3-f91bed68ddb7/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B419.png)
    
    ![구현화면20.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/a3b3e0fc-383c-4d55-a37a-05b1c7a42776/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B420.png)
    
    ![구현화면21.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/03a4de9a-4c05-4c53-9518-fe8c0006641a/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B421.png)
    
    ![구현화면22.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/cd55f145-e50a-46b8-8cd6-e0363caa1544/%EA%B5%AC%ED%98%84%ED%99%94%EB%A9%B422.png)
    

## 핵심 기능 코드 리뷰

---

### 기능 목표

---

학사 일정을 비동기 형태로 데이터를 가져와 출력된 해당 월에 대한 달력에 표시를 해서 사용자가 해당 월에 어떤 행사가 있는지 확인할 수 있어야함

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/78dc0e61-0667-415d-93d6-66223b91cf67/3a4273c2-0b7f-4b86-bcf3-2bac2cd7a6ab/67ebbb04-d791-409c-a28b-3f62d8dcb5c9.png)

### 처리 과정

---

- 캘린더 데이터 JSON 형식으로 반환
    
    ```java
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
    		String year = request.getParameter("year");
    		String month = request.getParameter("month");
    		
    		System.out.println("year : " + year);
    		System.out.println("month : " + month);
    		
    		List<Calendar> calendarList = null;
    		if( (year == null || year.equals("")) || (month == null || month.equals("")) ) {
    			calendarList = calendarService.list();
    		}
    		else {
    			calendarList = calendarService.listByYearMonth(year, month);
    		}
    		
    		PrintWriter writer = response.getWriter();
    		if( calendarList == null ) {
    			writer.print("NO DATA");
    			return;
    		}
    		
    		List<Map<?,?>> list = new ArrayList<Map<?,?>>();
    		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
    		for (Calendar cal : calendarList) {
    			Map<String, String> calMap = new HashMap<String, String>();
    			calMap.put("no", cal.getNo()+"");
    			calMap.put("strDate", sdf.format( cal.getStrDate() ));
    			calMap.put("endDate", sdf.format( cal.getEndDate() ));
    			calMap.put("content", cal.getContent());
    			
    			list.add(calMap);
    		}
    		
    		Map<String, List<?>> map = new HashMap<String, List<?>>();
    		map.put("dates", list);
    		
    		// [Calendar(), Calendar(), Calendar(), ...]
    		// [{'no':1,'stdDate':0000,'endDate':0000,'content':'설명'},{'no':1,'stdDate':0000,'endDate':0000,'content':'설명'},...]
    		// java List to JSON List
    		
    		JSONObject json = new JSONObject(map);
    		
    		response.setContentType("application/json");
    		writer.print(json);
    }
    ```
    

- AJAX 데이터 요청
    
    ```jsx
     $.ajax({
    	 type            : 'GET',                 // 요청 메소드
       url             : url,                    // 요청 URL
       data            : data,   // 요청 데이터
       contentType     : 'application/json',     // 요청 데이터 타입
       dataType        : 'html',     // 응답 데이터 타입
       // 요청 성공 
       success         : function(response, status) {
       // response : 응답 데이터
       // status   : 응답 상태
       console.log(response)
                        
       // 문자열 --> JSON
       let calList = JSON.parse( response ).dates
                        
       console.log("달력 데이터 -------------")
       console.log(calList[0].strDate)
                        
       // 달력에 일정 표시
       paintDates( calList )  
       },
       // 에러
       error           : function(xhr, status) {
       // xhr      : XMLHttpRequest 객체
       // status   : 응답 상태
       alert('에러 발생')
       }
    })
    ```
    

- 달력에 일정 표시하기
    
    ```jsx
    function paintDates( calList ) {
    			console.log(calList)
    			
    			let dateList = new Array()
    			for (let i = 0; i < calList.length; i++) {
    				
    				const strDate = calList[i].strDate
    				const endDate = calList[i].endDate
    				
    				const strDay = parseInt( strDate.split("-")[1] ) 
    				const endDay = parseInt( endDate.split("-")[1] )
    				
    				const content = calList[i].content
    				
    				// 끝나는 일정이 다음 달이면, endDay 를 31로 고정
    				const endMonth = endDate.split("-")[0]
    				let nextMonth = realMonth + 1
    				nextMonth = nextMonth < 10 ? "0" + nextMonth : nextMonth
    				if( endMonth == nextMonth ) {
    					endDay = 31
    				}
    				
    				// strDay : 1
    				// endDAy : 5
    				// j : 1,2,3,4,5
    				for (let j = strDay; j <= endDay; j++) {
    					let day = j < 10 ? "0" + j : j
    					let date = month + "-" + day
    					let obj = {
    							'date' 		: date,
    							'content' 	: content
    					}
    					dateList.push(obj)
    				}
    			}
    			
    			for (var i = 0; i < dateList.length; i++) {
    				let date = dateList[i].date
    				let content = dateList[i].content
    				$("[data=" + date +"]").addClass("date")
    				
    				
    				let count = $("[data=" + date +"] ~ .count").text()
    				console.log(content)
    				console.log(count)
    				
    				if( count == null || count == '' ) {
    					count = 0
    				}
    				let sumCount = parseInt( count ) + 1
    				
    				$("[data=" + date +"] ~ .count").text( sumCount )
    				
    				if(count != 1){
    					let dateli = `<li>${ content }</li>`
    					$("[data=" + date +"] ~ .date-content").append(dateli)					
    				}
    			}
    }
    ```
    

### 개선할 점

---

- 상세 일정을 출력하고 추후 툴팁을 사용해 해당 일정에 대해서 마우스를 클릭하면 툴팁에서 해당 일정이 뜰 수 있도록 하여 실제 대학교에서 사용 가능한 키오스크 시스템 처럼 구현하고자함

## 자체 평가 의견

---

### 개별 평가

---

- 이종식
    - 팀과의 협업을 하며 프로젝트를 수행하고 맡은 업무를 모두 수행했습니다
    시간 부족으로 인해 더 많은 기능적 요소를 추가하지 못한 아쉬움이 있습니다
    협업 툴을 더욱 잘 이해하고 JSON, AJAX와 MVC 패턴에 대한 이해를 할 수 있게 되었습니다.
- 오은아
    - 이번에는 백엔드 단을 많이 접해보지 못한 게 아쉽습니다.
    첫 설계를 탄탄히 하는 것이 매우 중요하다는 것을 몸소 알게되었습니다.
    첫 팀 프로젝트인데 화기애애하게 잘 진행되고 달성해서 마무리되어서 기뻤습니다
- 홍준범
    - 기능적인 측면은 잘 했다고 생각함 8점
    기획에서 아쉬운 부분이 있었으나 앞으로 진행 될 프로젝트는 어떻게 수행해야 하는지 알게 됨 기능적인 오류를 빨리 캐치하여 시간 손실을 줄이는게 중요하다고 느낌
    이번 프로젝트로 mvc 패턴의 전체적인 흐름을 알게되어서 결과적으로 좋은 경험이라고 생각함
- 홍 성
    - 정해진 기한 내에 할 수 있는 것을 최대한 구현했다는 점이 좋았다고 생각되며,
    역시 아쉬운 점은 짧았던 기간이었다고 생각됩니다. 그 시간을 단축 시킬 수 있는것이 실력이라 생각되며 후엔 더욱 발전해 좀더 직관적이고 편리한 기능 수용및 구현 그리고 통일된 디자인까지 이룰 수 있을거라 생각 됩니다. 3조 고생했습니다.
- 정주빈
    - 성실하게 역할을 수행하려고 노력하며 기능 구현은 모두 마쳤습니다.
    CSS가 제대로 고정되지 않은 문제가 있었습니다.
    팀원들과의 협업은 유익했습니다.  ORACLE, JAVA,  JSP에 대해 더 이해할 수 있는 계기라고 생각합니다.
    

### 종합 평가

---

- 한계점
    - 증명서 발급, 학사 일정, 게시판과 같은 필수 기능들은 거의 구현이 되었으나, 디자인적으로 아쉬운 부분이 많이 있다.
- 개선점
    - 개인이 작업 할 때는 잘 되던 기능들이 깃으로 합치면 안되는 경우가 많아, 공통적으로 사용하는 파일과 코드를 처음부터 틀을 잡으며, 팀원들이 같은 개발 환경에서 프로젝트를 진행한다.
- 문제 해결 방법
    - 프로젝트 설계하는데 시간이 조금 더 걸리더라도 기간에 따른 목표치 등 기획을 철저하게 하여 중간에 변경되는 부분을 최소화 한다. 틈틈이 깃을 이용해 파일을 합치고 팀원들과 소통을 원활히 하여 오류를 줄인다.
