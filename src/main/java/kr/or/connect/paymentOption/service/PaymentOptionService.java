package kr.or.connect.paymentOption.service;

import java.util.List;

import kr.or.connect.dto.BuyOption;
import kr.or.connect.dto.PaymentOption;

public interface PaymentOptionService {
	void insertPaymentOption(PaymentOption paymentOption);
	public List<PaymentOption> selectOnePaymentOption(int dealCode);
}
