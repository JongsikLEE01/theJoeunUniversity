package Calendar.DTO;

import java.util.Date;

public class Calendar {
	private int no;
	private Date strDate;
	private Date endDate;
	private String content;
	
	public Calendar() {
		
	}
	
	public Calendar(Date strDate, Date endDate, String content) {
		this.strDate = strDate;
		this.endDate = endDate;
		this.content = content;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Date getStrDate() {
		return strDate;
	}

	public void setStrDate(Date strDate) {
		this.strDate = strDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Calendar [no=" + no + ", strDate=" + strDate + ", endDate=" + endDate + ", content=" + content + "]";
	}
}