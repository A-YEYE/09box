package kr.or.connect.dto;

import java.sql.Date;

public class Goods {
	private int rnum;				// 품번
	private String categoryCode;	// f.k 카테고리 코드
	private String goodsName;		// 상품이름
	private int deliveryCharge;		// 배송비
	private Date sellStart;			// 판매 시작일
	private Date sellEnd;			// 판매 종료일
	private int goalNum;			// 목표수량
	private String content;			// 내용
	private int sellNum;			// 판매 갯수
	private int progress;			// 진행상황 (진행중: 0 / 성공: 1 / 실패: 2) 
	private String id;				// f.k id
	private String image;			// 썸네일
	
	public Goods() {}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
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

	public int getSellNum() {
		return sellNum;
	}

	public void setSellNum(int sellNum) {
		this.sellNum = sellNum;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
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
		return "Goods [rnum=" + rnum + ", categoryCode=" + categoryCode + ", goodsName=" + goodsName
				+ ", deliveryCharge=" + deliveryCharge + ", sellStart=" + sellStart + ", sellEnd=" + sellEnd
				+ ", goalNum=" + goalNum + ", content=" + content + ", sellNum=" + sellNum + ", progress=" + progress
				+ ", id=" + id + ", image=" + image + "]";
	}
}
