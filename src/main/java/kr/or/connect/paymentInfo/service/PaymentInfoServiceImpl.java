package kr.or.connect.paymentInfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.connect.dto.PaymentInfo;
import kr.or.connect.paymentInfo.dao.PaymentInfoDao;

@Service
public class PaymentInfoServiceImpl implements PaymentInfoService {
	@Autowired
	PaymentInfoDao dao;

	@Override
	public void insertPayInfo(PaymentInfo paymentInfo) {
		dao.insertInfo(paymentInfo);
	}

	@Override
	public PaymentInfo selectOne(int dealcode) {
		return dao.selectOnePayinfo(dealcode);
	}

	@Override
	public List<PaymentInfo> selectAll() {
		return dao.selectAllPayinfo();
	}

}
