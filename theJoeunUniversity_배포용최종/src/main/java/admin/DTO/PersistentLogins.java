package admin.DTO;

import java.util.Date;

public class PersistentLogins {

	private int pNo;
	private String userId;
	private String token;
	private Date regDate;
	private Date updDate;
	
	// getter, setter, toString
	
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getUpdDate() {
		return updDate;
	}
	public void setUpdDate(Date updDate) {
		this.updDate = updDate;
	}
	
	@Override
	public String toString() {
		return "PersistentLogins [pNo=" + pNo + ", userId=" + userId + ", token=" + token + ", regDate=" + regDate
				+ ", updDate=" + updDate + "]";	
	}
	
}
