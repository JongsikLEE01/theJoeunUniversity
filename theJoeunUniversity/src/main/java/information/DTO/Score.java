package information.DTO;

import java.util.Date;

public class Score {
    private int no;
    private String subjectScore;
    private Date inputDate;
    private Date updDate;
    private String type;
    private int uNo;
    private String courseCode;

    // 기본 생성자
    public Score() {
    }

    // 매개변수를 받는 생성자
    public Score(int no, String subjectScore, Date inputDate, Date updDate, String type, int uNo, String courseCode) {
        this.no = no;
        this.subjectScore = subjectScore;
        this.inputDate = inputDate;
        this.updDate = updDate;
        this.type = type;
        this.uNo = uNo;
        this.courseCode = courseCode;
    }

    // Getter 및 Setter 메서드
    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getSubjectScore() {
        return subjectScore;
    }

    public void setSubjectScore(String subjectScore) {
        this.subjectScore = subjectScore;
    }

    public Date getInputDate() {
        return inputDate;
    }

    public void setInputDate(Date inputDate) {
        this.inputDate = inputDate;
    }

    public Date getUpdDate() {
        return updDate;
    }

    public void setUpdDate(Date updDate) {
        this.updDate = updDate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getUNo() {
        return uNo;
    }

    public void setUNo(int uNo) {
        this.uNo = uNo;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    // toString 메서드
    @Override
    public String toString() {
        return "Score{" +
                "no=" + no +
                ", subjectScore=" + subjectScore +
                ", inputDate=" + inputDate +
                ", updDate=" + updDate +
                ", type='" + type + '\'' +
                ", uNo=" + uNo +
                ", courseCode='" + courseCode + '\'' +
                '}';
    }
}
