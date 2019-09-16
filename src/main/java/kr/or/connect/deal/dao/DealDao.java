package kr.or.connect.deal.dao;

import kr.or.connect.dto.Deal;

public interface DealDao {
	public void insertDeal(Deal deal);
	public Deal selectOneDeal(int dealCode);
	public void deleteDeal(int dealCode);
}
