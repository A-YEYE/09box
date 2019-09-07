package kr.or.connect.dto;

import java.util.List;

public class BuyOption {
	private int buyOptionCode;
	private int rnum;				// f.k
	private String optionName;
	private int optionPrice;
	
	public BuyOption() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public BuyOption(String optionName, int optionPrice, int rnum) {
		super();
		this.buyOptionCode = buyOptionCode;
		this.rnum = rnum;
		this.optionName = optionName;
		this.optionPrice = optionPrice;
	}
	
	public BuyOption(int buyOptionCode, int rnum, String optionName, int optionPrice) {
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
		return "BuyOption [buyOptionCode=" + buyOptionCode + ", rnum=" + rnum + ", optionName=" + optionName
				+ ", optionPrice=" + optionPrice + "]";
	}
	
}
