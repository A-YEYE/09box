package kr.or.connect.dto;

public class Authority {
	private int authorityCode;		// 1이면 USER, 2면 ADMIN
	private String authorityName;
	
	public Authority() {
		
	}
	
	public Authority(int authorityCode, String authorityName) {
		this.authorityCode = authorityCode;
		this.authorityName = authorityName;
	}
	public int getAuthorityCode() {
		return authorityCode;
	}
	public void setAuthorityCode(int authorityCode) {
		this.authorityCode = authorityCode;
	}
	public String getAuthorityName() {
		return authorityName;
	}
	public void setAuthorityName(String authorityName) {
		this.authorityName = authorityName;
	}
	@Override
	public String toString() {
		return "Authority [authorityCode=" + authorityCode + ", authorityName=" + authorityName + "]";
	}
}
