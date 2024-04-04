package admin.DTO;

import java.util.Date;

public class Board {
	
	private int no;
	private String title;
	private String writer;
	private String content;
	private Date reg_date;
	private Date upd_date;
	private int views;
	private int like_cnt;
	private int checkstaus;
	public Board() {
		
	}
	public Board(String title, String writer, String content ) {
		this.title = title;
		this.writer = writer;
		this.content = content;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getUpd_date() {
		return upd_date;
	}
	public void setUpd_date(Date upd_date) {
		this.upd_date = upd_date;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public int getLike_cnt() {
		return like_cnt;
	}
	public void setLike_cnt(int like_cnt) {
		this.like_cnt = like_cnt;
	}
	public int getCheckstaus() {
		return checkstaus;
	}
	public void setCheckstaus(int checkstaus) {
		this.checkstaus = checkstaus;
	}
	@Override
	public String toString() {
		return "Board [no=" + no + ", title=" + title + ", writer=" + writer + ", content=" + content + ", reg_date="
				+ reg_date + ", upd_date=" + upd_date + ", views=" + views + ", like_cnt=" + like_cnt + ", checkstaus="
				+ checkstaus + "]";
	}
	
	
	

	
	
}
