package kr.or.connect.dto;

import java.util.Date;

public class PaymentInfo {
	private String paymentInfo;
	private String dealCode;	// f.k
	private String paymentTf;
	private Date dealDate;
	
	public String getPaymentInfo() {
		return paymentInfo;
	}
	public void setPaymentInfo(String paymentInfo) {
		this.paymentInfo = paymentInfo;
	}
	public String getDealCode() {
		return dealCode;
	}
	public void setDealCode(String dealCode) {
		this.dealCode = dealCode;
	}
	public String getPaymentTf() {
		return paymentTf;
	}
	public void setPaymentTf(String paymentTf) {
		this.paymentTf = paymentTf;
	}
	public Date getDealDate() {
		return dealDate;
	}
	public void setDealDate(Date dealDate) {
		this.dealDate = dealDate;
	}
	
	@Override
	public String toString() {
		return "PaymentInfo [paymentInfo=" + paymentInfo + ", dealCode=" + dealCode + ", paymentTf=" + paymentTf
				+ ", dealDate=" + dealDate + "]";
	}
}
