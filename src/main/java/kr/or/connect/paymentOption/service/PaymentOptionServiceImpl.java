package kr.or.connect.paymentOption.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.connect.dto.PaymentOption;
import kr.or.connect.paymentOption.dao.PaymentOptionDao;

@Service
public class PaymentOptionServiceImpl implements PaymentOptionService {
	@Autowired
	PaymentOptionDao dao;
	
	@Override
	public void insertPaymentOption(PaymentOption paymentOption) {
		dao.paymentOptionInsert(paymentOption);
	}

}
