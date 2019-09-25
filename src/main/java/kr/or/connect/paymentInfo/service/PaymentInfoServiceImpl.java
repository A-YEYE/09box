package kr.or.connect.paymentInfo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		return dao.selectAll();
	}

	@Override
	public List<PaymentInfo> selectAllPayinfo(String id) {
		return dao.selectAllPayinfo(id);
	}

	@Override
	public List<Map<String, Object>> selectAllPayinfoMap(HashMap map) {
		return dao.selectAllPayinfoMap(map);
	}

}
