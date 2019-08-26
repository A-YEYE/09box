package kr.or.connect.dto;

import java.util.List;

public class BuyOption {
	private int buyOptionCode;
	private int rnum;				// f.k
	private String dealCode;		// f.k
	private String categoryCode;	// f.k
	private String optionName;
	private int optionPrice;
	private List<BuyOption> optionList;
	
	public BuyOption(String optionName, int optionPrice, int rnum) {
		super();
		this.buyOptionCode = buyOptionCode;
		this.rnum = rnum;
		this.optionName = optionName;
		this.optionPrice = optionPrice;
	}
	public int getBuyOptionCode() {
		return buyOptionCode;
	}
	public void setBuyOptionCode(int buyOptionCode) {
		this.buyOptionCode = buyOptionCode;
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
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public int getOptionPrice() {
		return optionPrice;
	}
	public void setOptionPrice(int optionPrice) {
		this.optionPrice = optionPrice;
	}
	public List<BuyOption> getOptionList() {
		return optionList;
	}
	public void setOptionList(List<BuyOption> optionList) {
		this.optionList = optionList;
	}
	
	@Override
	public String toString() {
		return "BuyOption [buyOptionCode=" + buyOptionCode + ", rnum=" + rnum + ", dealCode=" + dealCode
				+ ", categoryCode=" + categoryCode + ", optionName=" + optionName + ", optionPrice=" + optionPrice
				+ ", optionList=" + optionList + "]";
	}
}
