package kr.or.connect.paymentInfo.service;

import java.util.List;

import kr.or.connect.dto.PaymentInfo;

public interface PaymentInfoService {
	void insertPayInfo(PaymentInfo paymentInfo);
	PaymentInfo selectOne(int dealcode);
	List<PaymentInfo> selectAll();
}
