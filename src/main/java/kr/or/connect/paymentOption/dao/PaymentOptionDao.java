package kr.or.connect.paymentOption.dao;

import java.util.List;

import kr.or.connect.dto.PaymentOption;

public interface PaymentOptionDao {
	void paymentOptionInsert(PaymentOption paymentOption);
	List<PaymentOption> selectPayOptionOne(int dealCode);
}
