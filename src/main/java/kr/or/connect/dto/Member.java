package kr.or.connect.dto;

import java.util.Date;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String emailCheck;	// 확인했으면 yes
	private int authority;	// 일반 사용자: 9, 관리자: 8
	private Date odate;
	private Date idate;
	
	public Member() {
	
	}
	public Member(String id, String pwd, String name, String email, String emailCheck, int authority, Date odate,
			Date idate) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.emailCheck = emailCheck;
		this.authority = authority;
		this.odate = odate;
		this.idate = idate;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmailCheck() {
		return emailCheck;
	}
	public void setEmailCheck(String emailCheck) {
		this.emailCheck = emailCheck;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	public Date getOdate() {
		return odate;
	}
	public void setOdate(Date odate) {
		this.odate = odate;
	}
	public Date getIdate() {
		return idate;
	}
	public void setIdate(Date idate) {
		this.idate = idate;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", emailCheck="
				+ emailCheck + ", authority=" + authority + ", odate=" + odate + ", idate=" + idate + "]";
	}	
}
