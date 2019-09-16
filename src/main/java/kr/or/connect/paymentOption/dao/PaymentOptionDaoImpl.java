package kr.or.connect.paymentOption.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.connect.dto.PaymentOption;

@Repository
public class PaymentOptionDaoImpl implements PaymentOptionDao{
	@Autowired
	private SqlSessionTemplate sqlSession;
	String ns = "kr.or.connect.mybatis.PaymentOption";
	
	@Override
	public void paymentOptionInsert(PaymentOption paymentOption) {
		sqlSession.insert(ns+".InsertPayOption", paymentOption);
	}

}
