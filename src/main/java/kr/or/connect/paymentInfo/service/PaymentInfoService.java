package kr.or.connect.paymentInfo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.connect.dto.PaymentInfo;

public interface PaymentInfoService {
	void insertPayInfo(PaymentInfo paymentInfo);
	PaymentInfo selectOne(int dealcode);
	List<PaymentInfo> selectAll();
	List<PaymentInfo> selectAllPayinfo(String id);
	List<Map<String, Object>> selectAllPayinfoMap(HashMap map);
}
