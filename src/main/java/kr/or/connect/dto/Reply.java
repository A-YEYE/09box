package kr.or.connect.dto;

import java.util.Date;

public class Reply {
	private int replyNem;
	private int rNum;				// f.k
	private String dealCode;		// f.k
	private String categoryCode;	// f.k
	private String id;				// f.k
	private String replyContent;
	private int replyP;
	private int replyC;
	private Date replyDate;
	
	public int getReplyNem() {
		return replyNem;
	}
	public void setReplyNem(int replyNem) {
		this.replyNem = replyNem;
	}
	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public String getDealCode() {
		return dealCode;
	}
	public void setDealCode(String dealCode) {
		this.dealCode = dealCode;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public int getReplyP() {
		return replyP;
	}
	public void setReplyP(int replyP) {
		this.replyP = replyP;
	}
	public int getReplyC() {
		return replyC;
	}
	public void setReplyC(int replyC) {
		this.replyC = replyC;
	}
	public Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	
	@Override
	public String toString() {
		return "Reply [replyNem=" + replyNem + ", rNum=" + rNum + ", dealCode=" + dealCode + ", categoryCode="
				+ categoryCode + ", id=" + id + ", replyContent=" + replyContent + ", replyP=" + replyP + ", replyC="
				+ replyC + ", replyDate=" + replyDate + "]";
	}	
}
