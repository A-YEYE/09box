package kr.or.connect.dto;

import java.util.Date;

public class Reply {
	private int replyCode;
	private String id;				// f.k
	private String replyContent;		// f.k
	private Date replyDate;	// f.k
	private int rnum;				// f.k
	private int replyParent;
	private int replyOrder;
	
	public Reply(int replyCode, String id, String replyContent, Date replyDate, int rnum, int replyParent, int replyOrder) {
		this.replyCode = replyCode;
		this.id = id;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
		this.rnum = rnum;
		this.replyParent = replyParent;
		this.replyOrder = replyOrder;
	}

	public Reply() {
	}

	public int getReplyCode() {
		return replyCode;
	}

	public void setReplyCode(int replyCode) {
		this.replyCode = replyCode;
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

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getReplyParent() {
		return replyParent;
	}

	public void setReplyParent(int replyParent) {
		this.replyParent = replyParent;
	}

	public int getReplyOrder() {
		return replyOrder;
	}

	public void setReplyOrder(int replyOrder) {
		this.replyOrder = replyOrder;
	}

	@Override
	public String toString() {
		return "Reply [replyCode=" + replyCode + ", id=" + id + ", replyContent=" + replyContent + ", replyDate="
				+ replyDate + ", rnum=" + rnum + ", replyParent=" + replyParent + ", replyOrder=" + replyOrder + "]";
	}
}
