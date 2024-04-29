package information.DTO;

public class Course {
	
    private String courseCode;
    private String subjectName;
    private int dNo;

    // 기본 생성자
    public Course() {
    }

    // 매개변수를 받는 생성자
    public Course(String courseCode, String subjectName, int dNo) {
        this.courseCode = courseCode;
        this.subjectName = subjectName;
        this.dNo = dNo;
    }

    // Getter 및 Setter 메서드
    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public int getDNo() {
        return dNo;
    }

    public void setDNo(int dNo) {
        this.dNo = dNo;
    }

    // toString 메서드
    @Override
    public String toString() {
        return "Course{" +
                "courseCode='" + courseCode + '\'' +
                ", subjectName='" + subjectName + '\'' +
                ", dNo=" + dNo +
                '}';
    }
}

