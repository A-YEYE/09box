package kr.or.connect.dto;

import java.util.Date;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private int addr1;
	private String addr2;
	private String addr3;
	private String email;
	private String emailCheck;
	private int authrity;
	private int phon;
	private Date odate;
	private Date idate;
	
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
	public int getAddr1() {
		return addr1;
	}
	public void setAddr1(int addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
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
	public int getAuthrity() {
		return authrity;
	}
	public void setAuthrity(int authrity) {
		this.authrity = authrity;
	}
	public int getPhon() {
		return phon;
	}
	public void setPhon(int phon) {
		this.phon = phon;
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
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", addr1=" + addr1 + ", addr2=" + addr2
				+ ", addr3=" + addr3 + ", email=" + email + ", emailCheck=" + emailCheck + ", authrity=" + authrity
				+ ", phon=" + phon + ", odate=" + odate + ", idate=" + idate + "]";
	}
}
