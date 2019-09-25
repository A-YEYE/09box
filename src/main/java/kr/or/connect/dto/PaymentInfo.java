package kr.or.connect.dto;

import java.util.Date;

// 결제 정보
public class PaymentInfo {
	private int dealCode;	// p.k 결제 코드 
	private Date dealDate;		// 결제일
	private int paymentTf;	// 결제  실패 1, 성공 2, 취소 3
	private String id;
	private String receiveName;	// 받는 사람 이름
	private int receivePhon;	// 받는 사람 전화번호
	private String receiveAddr1;
	private String receiveAddr2;
	private String receivePostCode;
	private int rnum;			// 품번
	private int payDeliveryCharge;	
	private int totalPrice;    
	private String impUid;		// import(아임포트) 쓸 때 필요
	
	public PaymentInfo() {
		
	}

	public PaymentInfo(int paymentTf, String id,
			String receiveName, int receivePhon, String receiveAddr1, String receiveAddr2, String receivePostCode,
			int rnum, int payDeliveryCharge, int totalPrice, String impUid) {

		this.paymentTf = paymentTf; 
		this.id = id;
		this.receiveName = receiveName;
		this.receivePhon = receivePhon;
		this.receiveAddr1 = receiveAddr1;
		this.receiveAddr2 = receiveAddr2;
		this.receivePostCode = receivePostCode;
		this.rnum = rnum;
		this.payDeliveryCharge = payDeliveryCharge;
		this.totalPrice = totalPrice;
		this.impUid = impUid;
	}

	public int getDealCode() {
		return dealCode;
	}

	public void setDealCode(int dealCode) {
		this.dealCode = dealCode;
	}

	public Date getDealDate() {
		return dealDate;
	}

	public void setDealDate(Date dealDate) {
		this.dealDate = dealDate;
	}

	public int getPaymentTf() {
		return paymentTf;
	}

	public void setPaymentTf(int paymentTf) {
		this.paymentTf = paymentTf;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getReceiveName() {
		return receiveName;
	}

	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}

	public int getReceivePhon() {
		return receivePhon;
	}

	public void setReceivePhon(int receivePhon) {
		this.receivePhon = receivePhon;
	}

	public String getReceiveAddr1() {
		return receiveAddr1;
	}

	public void setReceiveAddr1(String receiveAddr1) {
		this.receiveAddr1 = receiveAddr1;
	}

	public String getReceiveAddr2() {
		return receiveAddr2;
	}

	public void setReceiveAddr2(String receiveAddr2) {
		this.receiveAddr2 = receiveAddr2;
	}

	public String getReceivePostCode() {
		return receivePostCode;
	}

	public void setReceivePostCode(String receivePostCode) {
		this.receivePostCode = receivePostCode;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getPayDeliveryCharge() {
		return payDeliveryCharge;
	}

	public void setPayDeliveryCharge(int payDeliveryCharge) {
		this.payDeliveryCharge = payDeliveryCharge;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getImpUid() {
		return impUid;
	}

	public void setImpUid(String impUid) {
		this.impUid = impUid;
	}
	
	@Override
	public String toString() {
		return "PaymentInfo [dealCode=" + dealCode + ", dealDate=" + dealDate + ", paymentTf=" + paymentTf + ", id="
				+ id + ", receiveName=" + receiveName + ", receivePhon=" + receivePhon + ", receiveAddr1="
				+ receiveAddr1 + ", receiveAddr2=" + receiveAddr2 + ", receivePostCode=" + receivePostCode + ", rnum="
				+ rnum + ", payDeliveryCharge=" + payDeliveryCharge + ", totalPrice=" + totalPrice + ", impUid="
				+ impUid + "]";
	}
}