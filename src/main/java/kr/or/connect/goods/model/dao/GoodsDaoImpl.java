package kr.or.connect.goods.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.connect.dto.Category;
import kr.or.connect.dto.Criteria;
import kr.or.connect.dto.Goods;

@Repository("GoodsDao")
public class GoodsDaoImpl implements GoodsDao{
	@Autowired
	private SqlSessionTemplate sqlSession;
	String ns = "kr.or.connect.mybatis.goods";
//	private RowMapper<Goods> rowMapper = BeanPropertyRowMapper.newInstance(Goods.class);
	

	@Override
	public void insert(Goods goods) {
		sqlSession.insert(ns+".insertGoods", goods);
	}

//	@Override
//	public List<Goods> selectAll(Integer start, Integer limt) {
//		List<Goods> list = sqlSession.selectList(ns+".selectAllGoods");
//		return list;
//	}
	
	@Override
	public Goods selectOne(int rnum) {
		return sqlSession.selectOne(ns+".selectOneGoods", rnum);
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll(Criteria criteria) {
		List<Map<String, Object>> list =  sqlSession.selectList(ns+".selectAllGoods", criteria);
		
		return list;
	}
	
	@Override
	public List<Goods> selectCategory(String categoryCode) {
		List<Goods> list = sqlSession.selectList(ns+".selectCategory", categoryCode);
		return list;
	}
	
//	@Override
//	public List<Goods> selectCategoryOne(Map map) {
//		List<Goods> list = sqlSession.selectList(ns+".selectCategoryOne", map);
//		
//		return list;
//	}
//	
//	@Override
//	public List<Goods> selectCategoryTwo(Map map) {
//		List<Goods> list = sqlSession.selectList(ns+".selectCategoryTwo", map);
//		
//		return list;
//	}
//	@Override
//	public List<Goods> selectCategoryThree(Map map) {
//		List<Goods> list = sqlSession.selectList(ns+".selectCategoryThree", map);
//		
//		return list;
//	}
//	@Override
//	public List<Goods> selectCategoryFour(Map map) {
//		List<Goods> list = sqlSession.selectList(ns+".selectCategoryFour", map);
//		
//		return list;
//	}
//	public static void main(String[] args) {
////		Map<String, Integer> params = new HashMap<>();
////		params.put("start", 1);
////		params.put("limit", 5);
////		List<Goods> list = sqlSession.selectList(ns+".selectAllGoods", params);
////		for(Goods goos : list) {
////			System.out.println("list: " + goos);
////		}
//		
//		Goods g = new Goods();
//		g.setContent("content");
//		g.setGoalNum(5);
//		g.setCategoryCode("categoryCode");
//		g.setDealCode("dealCode");
//		g.setDeliveryCharge(5000);
//		g.setGoodsName("goodsName");
//		g.setId("id");
//		g.setImage("image");
//		g.setPrice(10000);
//		g.setRnum(53);
//		g.setSellEnd(new Date());
//		g.setSellStart(new Date());
//		g.setSellNum(0);
//		g.setSuccessTf("successTf");
//		g.setSummary("summary");
//		
//		sqlSession.insert(ns+".insertGoods", g);
//	}

	@Override
	public int totalCount() {
		return (Integer)sqlSession.selectOne(ns+".totalCount");
	}
	
//	@Override
//	public int totalCount() {
//		return sqlSession.selectOne(ns+".totalCount");
//	}
	
	
}
