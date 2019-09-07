package kr.or.connect.goods.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.connect.dto.Category;
import kr.or.connect.dto.Criteria;
import kr.or.connect.dto.Goods;
import kr.or.connect.dto.PageMaker;
import kr.or.connect.goods.model.dao.GoodsDao;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	GoodsDao goodsDao;

	@Override
	public void insert(Goods goods) {
		goodsDao.insert(goods);
	}

	@Override
	public Goods selectOne(int rnum) {
		Goods goods = goodsDao.selectOne(rnum);
		return goods;
	}

//	@Override
//	public List<Goods> selectAll(Integer start) {
//		return goodsDao.selectAll(start, GoodsService.LIMIT);
//	}
	
	@Override
	public List<Map<String, Object>> selectAll(Criteria criteria) {
//		return goodsDao.selectAll(criteria);
		return goodsDao.selectAll(criteria); // 데이터 가져오기
		
//		/* 마지막 페이지에 있는 데이터가 1개 밖에 없을 때 그 데이터를 삭제하면 그 페이지의 데이터는 없다.
//		 * 현재 페이지 번호를 1감소시켜서 데이터를 다시 가져오기 */
//		if(map.size()==0) {
//			criteria.setPage(criteria.getPage()-1);
//			map = goodsDao.selectAll(criteria);
//		}
		
//		((Map<String, Object>) map).put("all", map);	// 게시물 목록을 Map에 저장
		
//		PageMaker pageMaker = new PageMaker();	
//		pageMaker.setCriteria(criteria);	// 페이지 목록 만들기
//		
//		pageMaker.setTotalCount(goodsDao.totalCount());	// 전체 데이터 개수 저장
//		
//		((Map<String, Object>) map).put("pageMaker", pageMaker);
	
//		return map;
	}

	@Override
	public List<Goods> selectCategory(String categoryCode) {
		return goodsDao.selectCategory(categoryCode);
	}
	
//	@Override
//	public List<Goods> selectCategoryOne(Map map) {
//		return goodsDao.selectCategoryOne(map);
//	}
//	@Override
//	public List<Goods> selectCategoryTwo(Map map) {
//		return goodsDao.selectCategoryTwo(map);
//	}
//	@Override
//	public List<Goods> selectCategoryThree(Map map) {
//		return goodsDao.selectCategoryThree(map);
//	}
//	@Override
//	public List<Goods> selectCategoryFour(Map map) {
//		return goodsDao.selectCategoryFour(map);
//	}
	@Override
	public int totalcount() {
		return goodsDao.totalCount();
	}
	
	
}
