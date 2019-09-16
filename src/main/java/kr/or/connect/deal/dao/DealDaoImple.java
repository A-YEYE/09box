package kr.or.connect.deal.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.connect.dto.Deal;

@Repository
public class DealDaoImple implements DealDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String ns = "kr.or.connect.mybatis.Deal";
	
	@Override
	public void insertDeal(Deal deal) {
		sqlSession.insert(ns+".insertDeal", deal);
	}

	@Override
	public Deal selectOneDeal(int dealCode) {
		return sqlSession.selectOne(ns+".selectOne", dealCode);
	}

	@Override
	public void deleteDeal(int dealCode) {
		sqlSession.delete(ns+".deleteDeal", dealCode);
	}

}
