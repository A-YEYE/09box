package kr.or.connect.goods.model.dao;

import java.util.List;
import java.util.Map;

import kr.or.connect.dto.Category;
import kr.or.connect.dto.Criteria;
import kr.or.connect.dto.Goods;

public interface GoodsDao {
//	List<Goods> selectAll(Integer start, Integer limt);
	List<Map<String, Object>> selectAll(Criteria criteria);
	List<Goods> selectCategory(String categoryCode);
//	List<Goods> selectCategoryOne(Map map);
//	List<Goods> selectCategoryTwo(Map map);
//	List<Goods> selectCategoryThree(Map map);
//	List<Goods> selectCategoryFour(Map map);
	void insert(Goods goods);
	Goods selectOne(int rnum);
	List<Goods> select();
	public int totalCount();
}
