package kr.or.connect.dto;

import java.util.Date;

public class Member {
	private String id;	//pk
	private String pwd;
	private String name;
	private String email;
	private String emailCheck;	// 확인했으면 yes
	private String authority;
	private int authorityCode;	// fk	
	private Date odate;
	private Date idate;
	
	public Member() {
	
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

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public int getAuthorityCode() {
		return authorityCode;
	}

	public void setAuthorityCode(int i) {
		this.authorityCode = i;
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
				+ emailCheck + ", authority=" + authority + ", authorityCode=" + authorityCode + ", odate=" + odate
				+ ", idate=" + idate + "]";
	}
}
