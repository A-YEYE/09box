package kr.or.connect.deal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.connect.deal.dao.DealDao;
import kr.or.connect.dto.Deal;

@Service
public class DealServiceImpl implements DealService {
	@Autowired
	private DealDao dao;
	
	@Override
	public void insertDeal(Deal deal) {
		dao.insertDeal(deal);
	}

	@Override
	public Deal selectOneDeal(int dealCode) {
		return dao.selectOneDeal(dealCode);
	}

	@Override
	public void deleteDeal(int dealCode) {
		dao.deleteDeal(dealCode);
	}

}
