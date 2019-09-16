package kr.or.connect.deal.service;

import kr.or.connect.dto.Deal;

public interface DealService {
	public void insertDeal(Deal deal);
	public Deal selectOneDeal(int dealCode);
	public void deleteDeal(int dealCode);
}
