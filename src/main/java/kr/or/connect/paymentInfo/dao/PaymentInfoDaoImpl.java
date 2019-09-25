package kr.or.connect.paymentInfo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.connect.dto.PaymentInfo;

@Repository
public class PaymentInfoDaoImpl implements PaymentInfoDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	String ns = "kr.or.connect.paymentInfo";
	
	@Override
	public void insertInfo(PaymentInfo paymentInfo) {
		sqlSession.insert(ns+".insertPayInfo", paymentInfo);
	}

	@Override
	public PaymentInfo selectOnePayinfo(int dealcode) {
		return sqlSession.selectOne(ns+".SelectOnePayInfo", dealcode);
	}

	@Override
	public List<PaymentInfo> selectAll() {
		return sqlSession.selectList(ns+".SelectAll");
	}

	@Override
	public List<PaymentInfo> selectAllPayinfo(String id) {
		return sqlSession.selectList(ns+".SelectAllPayInfo", id);
	}

	@Override
	public List<Map<String, Object>> selectAllPayinfoMap(HashMap map) {
		return sqlSession.selectList(ns+".SelectAllPayInfoMap");
	}

}
