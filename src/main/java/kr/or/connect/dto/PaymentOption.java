package kr.or.connect.dto;

// 구매한 옵션들 저장하는 테이블
public class PaymentOption {
	private int payOptionCode;	// p.k	
	private int buyOptionCode;	// 상품 옵션 코드
	private int dealCode;	// f.k 판매코드
	private int optionCount;	// 구매한 옵션 수량

	
	public PaymentOption() {
	}

	public PaymentOption(int buyOptionCode, int dealCode, int optionCount) {
	//	this.payOptionCode = payOptionCode;
		this.buyOptionCode = buyOptionCode;
		this.dealCode = dealCode;
		this.optionCount = optionCount;
	}
	
	public int getPayOptionCode() {
		return payOptionCode;
	}
	public void setPayOptionCode(int payOptionCode) {
		this.payOptionCode = payOptionCode;
	}
	public int getBuyOptionCode() {
		return buyOptionCode;
	}
	public void setBuyOptionCode(int buyOptionCode) {
		this.buyOptionCode = buyOptionCode;
	}
	public int getDealCode() {
		return dealCode;
	}
	public void setDealCode(int dealCode) {
		this.dealCode = dealCode;
	}
	public int getOptionCount() {
		return optionCount;
	}
	public void setOptionCount(int optionCount) {
		this.optionCount = optionCount;
	}

	@Override
	public String toString() {
		return "PaymentOption [payOptionCode=" + payOptionCode + ", buyOptionCode=" + buyOptionCode + ", dealCode="
				+ dealCode + ", optionCount=" + optionCount + "]";
	}	
}
