package kr.or.connect.dto;

public class BuyOption {
	private String buyOptionCode;
	private int rnum;				// f.k
	private String dealCode;		// f.k
	private String categoryCode;	// f.k
	private String optionName;
	private int optionPrice;
	
	public String getBuyOptionCode() {
		return buyOptionCode;
	}
	public void setBuyOptionCode(String buyOptionCode) {
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
	
	@Override
	public String toString() {
		return "BuyOption [buyOptionCode=" + buyOptionCode + ", rnum=" + rnum + ", dealCode=" + dealCode
				+ ", categoryCode=" + categoryCode + ", optionName=" + optionName + ", optionPrice=" + optionPrice
				+ "]";
	}
}
