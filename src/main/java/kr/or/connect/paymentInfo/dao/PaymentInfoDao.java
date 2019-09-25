package kr.or.connect.paymentInfo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.connect.dto.PaymentInfo;

public interface PaymentInfoDao {
	public void insertInfo(PaymentInfo paymentInfo);
	public PaymentInfo selectOnePayinfo(int dealcode);
	public List<PaymentInfo> selectAll();
	public List<PaymentInfo> selectAllPayinfo(String id);
	public List<Map<String, Object>> selectAllPayinfoMap(HashMap map);
}
