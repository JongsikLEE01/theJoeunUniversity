package information.DTO;

import java.util.List;

public class Users {
	// 학생 정보
	private int no;
	private String studentId;
	private String name;
	private String birth;
	private String mail;
	private String academicStatus;
	private int dNo;
	private Score score;
	private Course course;
	private Department department;
	
	private List<Score> scoreList;
	private List<Course> courseList;
	
	
	
	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
	
	public Course getCourse() {
		return course;
	}


	public void setCourse(Course course) {
		this.course = course;
	}


	public Score getScore() {
		return score;
	}


	public void setScore(Score score) {
		this.score = score;
	}
	
	public List<Score> getScoreList() {
        return scoreList;
    }

    public void setScoreList(List<Score> scoreList) {
        this.scoreList = scoreList;
    }
    public List<Course> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }

	//유저 생성자
	public Users() {
		this.studentId = "없음";
		this.name = "없음";
		this.birth = "없음";
		this.mail = "없음";
		this.academicStatus = "없음";
	}
	
	
	public Users(String studentId, String birth) {
		this.studentId = studentId;
		this.birth = birth;
	}
	
	


	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAcademicStatus() {
		return academicStatus;
	}
	public void setAcademicStatus(String academicStatus) {
		this.academicStatus = academicStatus;
	}
	public int getdNo() {
		return dNo;
	}
	public void setdNo(int dNo) {
		this.dNo = dNo;
	}

	@Override
	public String toString() {
		return "Users [no=" + no + ", studentId=" + studentId + ", name=" + name + ", birth=" + birth + ", mail=" + mail
				+ ", academicStatus=" + academicStatus + ", dNo=" + dNo + ", course=" + course + ", score=" + score
				+ ", department=" + department + ", scoreList=" + scoreList + ", courseList=" + courseList + "]";
	}
	

	

}
