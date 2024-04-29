package admin.DTO;


public class Users {
	private int uno;
	private String studentId;
	private String name;
	private String birth;
	private String mail;
	private String academicStatus;
	private int dNo;
	public Users() {
		
	}
	
	public Users(String studentId, String name, String birth, String mail, String academicStatus, int dNo) {
		
		this.studentId = studentId;
		this.name = name;
		this.birth = birth;
		this.mail = mail;
		this.academicStatus = academicStatus;
		this.dNo = dNo;
	}

	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
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
		return "Users [uno=" + uno + ", studentId=" + studentId + ", name=" + name + ", birth=" + birth + ", mail="
				+ mail + ", academicStatus=" + academicStatus + ", dNo=" + dNo + "]";
	}
	
	
	
	
	
	
	
	
	
}
