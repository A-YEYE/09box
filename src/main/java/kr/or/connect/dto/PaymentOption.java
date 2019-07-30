package kr.or.connect.dto;

public class PaymentOption {
	private String paymentCode;	// f.k
	private String dealCode;
	private String paymentName;
	
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getDealCode() {
		return dealCode;
	}
	public void setDealCode(String dealCode) {
		this.dealCode = dealCode;
	}
	public String getPaymentName() {
		return paymentName;
	}
	public void setPaymentName(String paymentName) {
		this.paymentName = paymentName;
	}
	
	@Override
	public String toString() {
		return "PaymentOption [paymentCode=" + paymentCode + ", dealCode=" + dealCode + ", paymentName=" + paymentName
				+ "]";
	}
}
