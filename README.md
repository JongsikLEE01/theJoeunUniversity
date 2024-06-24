# **프로젝트 : theJoeunUniversity** kiosk
![images](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/4a739f76-94af-43c0-8948-cc041804c333)
<br><br>

## 목차
- 프로젝트 개요
- 프로젝트 구조
- 프로젝트 팀 구성 및 역할
- 프로젝트 수행 절차 및 방법
- 프로젝트 수행 경과
- 핵심기능 코드 리뷰
- 자체 평가 의견

## 1. 프로젝트 개요

### 1-1. 프로젝트 주제
- 누구나 쉽게 이용 가능한 더조은 대학 키오스크 시스템

### 1-2. 주제 선정 배경
- 성장하는 IOT 시장을 노려서 개발
- 누구나 제한 없이 사용하기 위한 키오스크는 어떻게 개발되어야 할까?
- 어려운 증명서 발급을 어떻게 손쉽게 할 수 있을까?

### 1-3. 기획 의도
- 누구나 쉽게 이용 가능한 키오스크
- 누구나 공평하게 이용 가능한 키오스크
- 교내의 정보를 한 눈에 알 수 있고, 어려운 절차 없이 이용 가능한 키오스크

### 1-4. 활용방안
- 학생들은 키오스크를 통해 학사 정보를 손쉽게 조회하고 각종 증명서를 발급받을 수 있습니다. 이를 통해 번거로운 절차와 대기 시간을 줄이고, 정보의 접근성을 향상시킬 수 있습니다.
- 키오스크를 활용하여 학교의 다양한 시설과 프로그램에 대한 정보를 제공할 수 있습니다. 새로운 학생들은 학교의 역사, 학과 소개, 공지 사항 등을 쉽게 알아갈 수 있습니다.
- 학생들은 키오스크를 통해 시험 일정이나 학기 중요 일정을 확인할 수 있습니다. 이를 통해 학생들은 학업 계획을 세우고 시간을 효율적으로 활용할 수 있습니다.

### 1-5. 기대효과
- 학생들은 언제든지 필요한 정보를 키오스크를 통해 손쉽게 얻을 수 있습니다. 이는 학생들의 학교 생활을 보다 편리하게 만들어줄 것입니다.
- 키오스크를 통해 정보를 얻는 과정이 간편해지고, 번거로운 절차와 대기 시간을 줄일 수 있습니다. 이는 학생들의 시간을 절약할 수 있습니다
- 키오스크를 통해 학교 관련 정보를 쉽게 얻을 수 있으므로, 학교와 학생들 간의 정보 공유가 원활해집니다. 이는 학생들의 학교 생활에 대한 이해도를 높이고 투명성을 제고할 것입니다.

## 2. 프로젝트 구조
### 2-1. 주요기능
- 로그인한 학생이 각 종 증명서를 발급
- 로그인 없이 일정, 공지사항, 학교 소개들을 모두 볼 수 있음
- 각 종 정보를 다루는 관리자

### 2-2. 기타 기능
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

### 2-3. 메뉴구조도
<details>
    <summary>메뉴 구조도</summary>
    
![프로젝트구조](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/7c6a0649-18c5-4f6d-a197-fe7530aaa7c5)
![프로젝트구조2](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/1fa93c95-bec7-4082-8ae9-ecbf8d91aa73)
![프로젝트구조3](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/ded13d44-d2f3-4f20-86b3-c47f81475d3d)
</details><br><br>
    

## 3. 프로젝트 팀 구성 및 역할
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

## 4. 프로젝트 수행 절차 및 방법
### 4-1. 수행 절차
<details>
    <summary>수행 절차</summary>
    
![수행절차](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/1e058f50-41f5-4c21-b6e2-af168d70101e)
</details>

### 4-2. 수행 방법
- 사용 언어 : Java, Oracle, HTML5, CSS, JavaScript, jQuery, JSP/Servlet, JSON
- IDE : elipse, VSCode
- 서버 환경 : TOMCAT 8.5
- CI/CD : Git, GitHub
- 라이브러리 : Kakaomap, Jquery-simple, hangul

## 5. 프로젝트 수행 경과
### 5-1. 요구사항 정의서
<details>
    <summary>요구사항 정의서</summary>
    
![요구사항정의서](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/186c6214-eedf-46f0-85b5-30745d77234e)
</details>
    

### 5-2. 기능 정의서
<details>
    <summary>기능 정의서</summary>
    
![기능정의서](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/d2c8945d-5874-4298-a494-51993ce51edf)
![기능정의서2](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/a19b75fe-c68f-44fb-a19a-b360f557599f)
</details>

### 5-3. ERD
<details>
    <summary>ERD</summary>
    
![ERD](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/e3a2580b-cdc3-4465-84ab-849af60c862a)
</details>

    

### 5-4. 테이블 정의서
<details>
    <summary>테이블 정의서</summary>
    
![테이블정의서1](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/acdb9969-0ad0-4c47-9ec4-cb3ce8e2f9c8)
![테이블정의서2](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/87e0a2ce-6d6c-4f17-b874-f72f65cc5890)
![테이블정의서3](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/c71ce708-9f23-4f9e-9ede-e3928f83f46c)
![테이블정의서4](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/9327e408-f130-4e3c-b860-9ab739692fb4)
![테이블정의서5](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/a41830a4-9973-496b-bdf3-eec9bcabe842)
![테이블정의서6](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/e6b0aa3c-bd40-4606-ae13-14bfd604971c)
![테이블정의서7](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/1f518d17-b0d4-4172-bca2-c5684ca35869)
</details>
    

### 5-5. 프로젝트 실제 화면 UI
<details>
    <summary>메인 화면</summary>
    
![구현화면1](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/c186ce7b-84ac-457a-a610-3909197fce0c)
![구현화면2](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/eb3e8ea8-afd6-4255-9215-984cb2a556c4)
</details>
<br>

<details>
    <summary>학교 소개</summary>
    
![구현화면3](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/7daaaa34-602d-4b31-81b3-6d1e62a3516e)
![구현화면4](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/da053769-3e07-4ee7-b3e3-110a93ed3ecb)
![구현화면5](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/c0b27cc0-2ff9-485e-b383-02a46309ffa6)
![구현화면6](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/c6551a0c-2391-41e3-a9f6-dac66005275c)
![구현화면7](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/aec2a10c-17f1-4072-9262-d613af46239b)
![구현화면8](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/58f496c4-e8aa-4014-8cf1-4f52e242966b)
</details>
<br>

<details>
    <summary>학생 정보</summary>
    
![구현화면10](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/965939cc-63f2-4e00-9cbf-7e318b61e546)
![구현화면11](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/903d8df3-bcb6-4c9f-9fd1-ff5c82ef8059)
![구현화면12](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/f2329c7b-90c4-4529-8eb1-bb93c9d652ba)
</details>
<br>

<details>
    <summary>공지 사항</summary>
    
![구현화면13](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/16db7a27-7ef3-44bf-b14f-d05c19464127)
![구현화면14](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/c8b28b35-c8d3-4d48-9ca4-81ad82e41ddb)
</details>
<br>

<details>
    <summary>학사 일정</summary>
    
![구현화면9](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/6a52bb3e-0e2d-4069-92e7-cb07b755706f)
</details>
<br>
    
<details>
    <summary>관리자 페이지</summary>
    
![구현화면15](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/f8ea43fe-c1f2-49b4-bb33-5792c5674ab1)
![구현화면16](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/30ebe235-a159-4e87-94da-f1f65a54a244)
![구현화면17](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/2deaee11-eb45-4615-a685-0ab56ad8d78f)
![구현화면18](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/453fe54d-a137-4958-9a67-71b09a38fa6a)
![구현화면19](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/5d52cb40-87d3-449d-8708-1bf98b46d0e5)
![구현화면20](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/af353013-8cdd-4c60-8f86-71f010c7cc31)
![구현화면21](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/8cf471ed-6827-4671-949f-a20fa6895757)
![구현화면22](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/66d669cc-d0e0-4c46-bd53-955dfbc19420)
</details>
<br>

## 6. 핵심 기능 코드 리뷰

### 6-1. 기능 목표
학사 일정을 비동기 형태로 데이터를 가져와 출력된 해당 월에 대한 달력에 표시를 해서 사용자가 해당 월에 어떤 행사가 있는지 확인할 수 있어야함

![구현화면9](https://github.com/JongsikLEE01/theJoeunUniversity/assets/137877490/6a52bb3e-0e2d-4069-92e7-cb07b755706f)
<br>

### 6-2. 처리 과정
<details>
    <summary>캘린더 데이터 JSON 형식으로 반환</summary>

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
</details>
<br>


<details>
    <summary>AJAX 데이터 비동기 요청</summary>

    $.ajax({
    	 type            : 'GET',                // 요청 메소드
       url             : url,                    // 요청 URL
       data            : data,                   // 요청 데이터
       contentType     : 'application/json',     // 요청 데이터 타입
       dataType        : 'html',                 // 응답 데이터 타입
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
</details>
<br>

<details>
    <summary>달력에 일정 표시하기</summary>

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
</details>
<br>
    

### 6-3. 개선할 점
- 상세 일정을 출력하고 추후 툴팁을 사용해 해당 일정에 대해서 마우스를 클릭하면 툴팁에서 해당 일정이 뜰 수 있도록 하여 실제 대학교에서 사용 가능한 키오스크 시스템 처럼 구현하고자함

## 7. 자체 평가 의견
### 7-1. 개별 평가
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
    

### 7-2. 종합 평가
- 한계점
    - 증명서 발급, 학사 일정, 게시판과 같은 필수 기능들은 거의 구현이 되었으나, 디자인적으로 아쉬운 부분이 많이 있다.
- 개선점
    - 개인이 작업 할 때는 잘 되던 기능들이 깃으로 합치면 안되는 경우가 많아, 공통적으로 사용하는 파일과 코드를 처음부터 틀을 잡으며, 팀원들이 같은 개발 환경에서 프로젝트를 진행한다.
- 문제 해결 방법
    - 프로젝트 설계하는데 시간이 조금 더 걸리더라도 기간에 따른 목표치 등 기획을 철저하게 하여 중간에 변경되는 부분을 최소화 한다. 틈틈이 깃을 이용해 파일을 합치고 팀원들과 소통을 원활히 하여 오류를 줄인다.
