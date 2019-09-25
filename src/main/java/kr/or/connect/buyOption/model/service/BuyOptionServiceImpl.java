package kr.or.connect.buyOption.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.connect.buyOption.model.dao.BuyOptionDao;
import kr.or.connect.dto.BuyOption;

@Service
public class BuyOptionServiceImpl implements BuyOptionService {
	@Autowired
	BuyOptionDao buyOptionDao;
	
	@Override
	public void insert(BuyOption buyOption) {
		buyOptionDao.insertBuyOption(buyOption);
	}

	@Override
	public List<BuyOption> selectAll() {
		return  buyOptionDao.selectAllBuyOption();
	}

	@Override
	public List<BuyOption> selectOneBuyOption(int rnum) {
		return buyOptionDao.selectBuyOptionOne(rnum);
	}

	@Override
	public BuyOption buyOption(int buyOption) {
		return buyOptionDao.buyOption(buyOption);
	}

}
