package information.DTO;

public class Department {
    private int dNo;
    private String majorName;
    
    
    
    
    public Department() {
	}

	// 생성자
    public Department(int dNo, String majorName) {
        this.dNo = dNo;
        this.majorName = majorName;
    }

    // Getter 및 Setter 메서드
    public int getDNo() {
        return dNo;
    }

    public void setDNo(int dNo) {
        this.dNo = dNo;
    }

    public String getMajorName() {
        return majorName;
    }

    public void setMajorName(String majorName) {
        this.majorName = majorName;
    }

    // toString 메서드
    @Override
    public String toString() {
        return "Department{" +
                "dNo=" + dNo +
                ", majorName='" + majorName + '\'' +
                '}';
    }
}

