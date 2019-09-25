package kr.or.connect.buyOption.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.connect.dto.BuyOption;

@Repository("BuyOptionDao")
public class BuyOptionDaoImpl implements BuyOptionDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	String ns = "kr.or.connect.mybatis.buyOption";
	
	@Override
	public List<BuyOption> selectAllBuyOption() {
		List<BuyOption> list = sqlSession.selectList(ns+".selectAllBuyOption");
		return list;
	}

	@Override
	public void insertBuyOption(BuyOption buyOption) {
		sqlSession.insert(ns+".insertBuyOption", buyOption);

	}

	@Override
	public List<BuyOption> selectBuyOptionOne(int rnum) {
		List<BuyOption> buyOptionOne = sqlSession.selectList(ns+".selectOneBuyOption", rnum);
		return buyOptionOne;
	}

	@Override
	public BuyOption buyOption(int buyOption) {
		return sqlSession.selectOne(ns+".selectOneOption", buyOption);
	}

}
