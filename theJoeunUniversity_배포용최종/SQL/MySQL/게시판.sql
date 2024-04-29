DROP TABLE board;
-- 게시판 DB 생성
CREATE TABLE board (
    no INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NULL,
    writer VARCHAR(50) NULL,
    content VARCHAR(2000) NULL,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    upd_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    views INT NULL,
    like_cnt INT NULL,
    checkstaus INT NULL,
    PRIMARY KEY (no)
);

-- 초기 데이터 삽입
INSERT INTO board (no, title, writer, content, reg_date, upd_date) 
VALUES 
(1, '[학생지원]국제학생증 발급비 지원', '김교수', 
   '가. 온라인 신청서 등록 : isic.co.kr/hbr/324005',
 '2024-04-04','2024-04-04 ');

 -- 추가 데이터 삽입
INSERT INTO board (no, title, writer, content, reg_date, upd_date) 
VALUES 
(2, '조교(학부TA) 모집 공고', '안교수', 
   '1. 모집인원 : TA1 1명
    2. 자격 : 학부 재학생 
(교비근로, 국가근로 중복 근무 불가)
    3. 담당 업무: 연구소 업무 보조 (주10시간 근무)',
 '2024-04-09','2024-04-09');

INSERT INTO board (no, title, writer, content, reg_date, upd_date) 
VALUES 
(3, '장학생 선발 안내', '박교수', 
   '1. 추천 인원 : 2024학년도 정규 등록 재학생 1명 (※1학년 제외)
    
    2. 장학금액 : 200만 원 (생활비성 장학금)
  ※ 최대 2개 학기 지급 
    
    3. 지원 자격
  가. 소득 : 한국장학재단 소득 0 ~ 1구간
  나. 성적 : 직전 두 학기 평점 평균 3.5 이상 (4.5 만점 기준) 
    
    4. 제출 서류 (원본 제출)
  가. 장학생 신청 및 추천서 (재단 양식)
  나. 자기소개서 (재단 양식) 
  다. 장학금 지급 규정 준수 동의서 (재단 양식)
  라. 한국장학재단 학자금 지원 구간 통지서
  마. 성적 증명서
    
    5. 신청 방법 : 인하대학교 장학복지팀 방문 접수 (학생회관 3층 장학복지팀)
    
    6. 접수 기한 : ~ 4. 15. (월) 18:00',
 '2024-04-12','2024-04-14');

INSERT INTO board (no, title, writer, content, reg_date, upd_date) 
VALUES 
(4, '중간고사 대비 프로그램 운영', '강조교', 
   '비교과 프로그램을 아래와 같이 운영하오니 학생들의 많은 관심과 참여 부탁 드립니다.
   비교과 과목으로는 C언어, JAVA, JSP, PYTHON이 있습니다. 
   과목 신청 페이지는 4월 14일 열릴 예정으로 해당 페이지는13일에 안내가 있을 예정입니다.',
 '2024-04-12','2024-04-14');

INSERT INTO board (no, title, writer, content, reg_date, upd_date) 
VALUES 
(5, '2024학년도 1학기 재입학 전형 안내', '유교수', 
   '1. 지원자격

  가. 2023-2 이전(~2023년 9월 제적일) 미등록, 복학불이행 및 학사경고로 제적된 자
나. 2023-1 이전(~2023년 8월 자퇴) 자퇴한 자
다. 「학칙」 제50조 제6항에 따라 징계로 퇴학당한 학생에게는 재입학을 불허

2. 모집인원 : 총 62명(정원내: 35명, 정원외: 27명)
  ※ 의과대학 및 사범대학 재입학 모집인원 없음

  ※ 자세한 내용은 재입학 모집인원 참조',
 '2024-06-01','2024-06-01');
