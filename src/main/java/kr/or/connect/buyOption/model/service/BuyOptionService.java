package kr.or.connect.buyOption.model.service;

import java.util.List;

import kr.or.connect.dto.BuyOption;

public interface BuyOptionService {
	void insert(BuyOption buyOption);
	List<BuyOption> selectAll();
	List<BuyOption> selectOneBuyOption(int rnum);
}
