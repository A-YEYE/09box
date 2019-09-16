package kr.or.connect.paymentInfo.dao;

import java.util.List;

import kr.or.connect.dto.PaymentInfo;

public interface PaymentInfoDao {
	public void insertInfo(PaymentInfo paymentInfo);
	public PaymentInfo selectOnePayinfo(int dealcode);
	public List<PaymentInfo> selectAllPayinfo();
}
