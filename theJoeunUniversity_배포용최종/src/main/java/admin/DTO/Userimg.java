package admin.DTO;

public class Userimg {
	private int no;
	private String filename;
	private int usernum;
	public Userimg() {
		
	}
	public Userimg(String filename, int usernum) {
		super();
		this.filename = filename;
		this.usernum = usernum;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getUsernum() {
		return usernum;
	}
	public void setUsernum(int usernum) {
		this.usernum = usernum;
	}
	@Override
	public String toString() {
		return "Userimg [no=" + no + ", filename=" + filename + ", usernum=" + usernum + "]";
	}
	
	
}
