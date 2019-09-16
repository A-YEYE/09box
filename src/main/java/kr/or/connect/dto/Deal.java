package kr.or.connect.dto;

import java.util.Date;

public class Deal {
	private String dealCode;
	private String id;	// f.k
	private Date dealDate;
	private int deliveryCharge;
	private int totalCost;
	private String successTf;
	
	public String getSuccessTf() {
		return successTf;
	}
	public void setSuccessTf(String successTf) {
		this.successTf = successTf;
	}
	public String getDealCode() {
		return dealCode;
	}
	public void setDealCode(String dealCode) {
		this.dealCode = dealCode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getDealDate() {
		return dealDate;
	}
	public void setDealDate(Date dealDate) {
		this.dealDate = dealDate;
	}
	public int getDeliveryCharge() {
		return deliveryCharge;
	}
	public void setDeliveryCharge(int deliveryCharge) {
		this.deliveryCharge = deliveryCharge;
	}
	public int getTotalCost() {
		return totalCost;
	}
	public void setTotalCost(int totalCost) {
		this.totalCost = totalCost;
	}
	@Override
	public String toString() {
		return "Deal [dealCode=" + dealCode + ", id=" + id + ", dealDate=" + dealDate + ", deliveryCharge="
				+ deliveryCharge + ", totalCost=" + totalCost + ", successTf=" + successTf + "]";
	}
}
