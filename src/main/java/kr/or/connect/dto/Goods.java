package kr.or.connect.dto;

import java.sql.Date;

public class Goods {
	private int rnum;
	private String dealCode;		// f.k
	private String categoryCode;	// f.k
	private String goodsName;
	private int price;
	private int deliveryCharge;
	private Date sellStart;
	private Date sellEnd;
	private int goalNum;
	private String content;
	private String summary;
	private int sellNum;
	private String successTf;
	private String id;				// f.k
	private String image;
	
	public Goods() {}
	public Goods(int rnum, String dealCode, String categoryCode, String goodsName, int price, int deliveryCharge,
			Date sellStart, Date sellEnd, int goalNum, String content, String summary, int sellNum, String successTf,
			String id, String image) {
		super();
		this.rnum = rnum;
		this.dealCode = dealCode;
		this.categoryCode = categoryCode;
		this.goodsName = goodsName;
		this.price = price;
		this.deliveryCharge = deliveryCharge;
		this.sellStart = sellStart;
		this.sellEnd = sellEnd;
		this.goalNum = goalNum;
		this.content = content;
		this.summary = summary;
		this.sellNum = sellNum;
		this.successTf = successTf;
		this.id = id;
		this.image = image;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
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
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDeliveryCharge() {
		return deliveryCharge;
	}
	public void setDeliveryCharge(int deliveryCharge) {
		this.deliveryCharge = deliveryCharge;
	}
	public Date getSellStart() {
		return sellStart;
	}
	public void setSellStart(Date sellStart) {
		this.sellStart = sellStart;
	}
	public Date getSellEnd() {
		return sellEnd;
	}
	public void setSellEnd(Date sellEnd) {
		this.sellEnd = sellEnd;
	}
	public int getGoalNum() {
		return goalNum;
	}
	public void setGoalNum(int goalNum) {
		this.goalNum = goalNum;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public int getSellNum() {
		return sellNum;
	}
	public void setSellNum(int sellNum) {
		this.sellNum = sellNum;
	}
	public String getSuccessTf() {
		return successTf;
	}
	public void setSuccessTf(String successTf) {
		this.successTf = successTf;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	@Override
	public String toString() {
		return "Goods [rnum=" + rnum + ", dealCode=" + dealCode + ", categoryCode=" + categoryCode + ", goodsName="
				+ goodsName + ", price=" + price + ", deliveryCharge=" + deliveryCharge + ", sellStart=" + sellStart
				+ ", sellEnd=" + sellEnd + ", goalNum=" + goalNum + ", content=" + content + ", summary=" + summary
				+ ", sellNum=" + sellNum + ", successTf=" + successTf + ", id=" + id + ", image=" + image + "]";
	}
}
