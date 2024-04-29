-- 사용자 관련 DB 생성
CREATE TABLE Users (
	uNo INT AUTO_INCREMENT PRIMARY KEY,
	StudentID VARCHAR(30) NOT NULL,
	Name VARCHAR(20) NULL,
	Birth VARCHAR(100) NULL,
	Mail VARCHAR(100) NULL,
	AcademicStatus VARCHAR(100) NULL,
	dNo INT NOT NULL
);

CREATE TABLE Course (
	Coursecode VARCHAR(100) NOT NULL,
	Subject_name VARCHAR(100) NULL,
	dNo INT NOT NULL,
	PRIMARY KEY (Coursecode)
);

CREATE TABLE Score (
	No INT AUTO_INCREMENT PRIMARY KEY,
	Subjectscore VARCHAR(50) NOT NULL,
	Input_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	Upd_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	Type VARCHAR(50) NULL,
	uNo INT NOT NULL,
	Coursecode VARCHAR(30) NOT NULL
);

CREATE TABLE Department (
	dNo INT NOT NULL,
	Majorname VARCHAR(100) NOT NULL,
	PRIMARY KEY (dNo)
);

CREATE TABLE userimg (
	no INT NOT NULL,
	filename VARCHAR(255),
	usernum INT NOT NULL,
	PRIMARY KEY (no)
);

-- 사용자 관련 데이터 삽입
INSERT INTO Score (No, Subjectscore, Type, uNo, Coursecode) VALUES (1, 'A', 'Midterm', 1, 'CSCI101');
INSERT INTO Score (No, Subjectscore, Type, uNo, Coursecode) VALUES (2, 'B+', 'Final', 2, 'ENG101');
INSERT INTO Score (No, Subjectscore, Type, uNo, Coursecode) VALUES (3, 'B', 'Midterm', 3, 'MATH101');
INSERT INTO Score (No, Subjectscore, Type, uNo, Coursecode) VALUES (4, 'A', 'Final', 4, 'HIST101');
INSERT INTO Score (No, Subjectscore, Type, uNo, Coursecode) VALUES (5, 'C', 'Midterm', 5, 'PHYS101');

INSERT INTO Course (Coursecode, Subject_name, dNo) VALUES ('CSCI101', 'Introduction to Computer Science', 1);
INSERT INTO Course (Coursecode, Subject_name, dNo) VALUES ('ENG101', 'English Composition', 2);
INSERT INTO Course (Coursecode, Subject_name, dNo) VALUES ('MATH101', 'Calculus', 3);
INSERT INTO Course (Coursecode, Subject_name, dNo) VALUES ('HIST101', 'World History', 4);
INSERT INTO Course (Coursecode, Subject_name, dNo) VALUES ('PHYS101', 'Physics', 1);

INSERT INTO Users (StudentID, Name, Birth, Mail, AcademicStatus, dNo) VALUES ('20220001', 'John Doe', '1990-05-15', 'john@example.com', '재학', 1);
INSERT INTO Users (StudentID, Name, Birth, Mail, AcademicStatus, dNo) VALUES ('20220002', 'Jane Smith', '1992-08-20', 'jane@example.com', '재학', 2);
INSERT INTO Users (StudentID, Name, Birth, Mail, AcademicStatus, dNo) VALUES ('20220003', 'Alice Johnson', '1988-12-10', 'alice@example.com', '재학', 1);
INSERT INTO Users (StudentID, Name, Birth, Mail, AcademicStatus, dNo) VALUES ('20220004', 'Bob Brown', '1991-03-25', 'bob@example.com', '재학', 2);
INSERT INTO Users (StudentID, Name, Birth, Mail, AcademicStatus, dNo) VALUES ('20220005', 'Emily Davis', '1993-06-18', 'emily@example.com', '졸업', 1);

INSERT INTO Department (dNo, Majorname) VALUES (1, '컴퓨터 공학');
INSERT INTO Department (dNo, Majorname) VALUES (2, '전기 공학');
INSERT INTO Department (dNo, Majorname) VALUES (3, '화학 공학');

