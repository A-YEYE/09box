package kr.or.connect.goods.model.service;

import java.util.List;
import java.util.Map;

import kr.or.connect.dto.Category;
import kr.or.connect.dto.Criteria;
import kr.or.connect.dto.Goods;

public interface GoodsService {
	void insert(Goods goods);
	Goods selectOne(int rnum);
	public static final Integer LIMIT = 5;
//	List<Goods> selectAll(Integer start);
	List<Map<String, Object>> selectAll(Criteria criteria);
	List<Goods> selectCategory(String categoryCode);
//	List<Goods> selectCategoryOne(Map map);
//	List<Goods> selectCategoryTwo(Map map);
//	List<Goods> selectCategoryThree(Map map);
//	List<Goods> selectCategoryFour(Map map);
	int totalcount();
	List<Goods> optionSelect();
	List<Goods> selectPopular();
	void updqteSellNum(Goods goods);
	void updqteScheduler(Goods goods);
	void deleteGoods(int rnum);
	List<Goods> selectAllById(int rnum);
	List<Goods> selectMySell(String id);
}
