package kr.or.connect.buyOption.model.dao;

import java.util.List;
import java.util.Map;

import kr.or.connect.dto.BuyOption;

public interface BuyOptionDao {
	List<BuyOption> selectAllBuyOption();
	void insertBuyOption(BuyOption buyOption);
	List<BuyOption> selectBuyOptionOne(int rnum);
}
