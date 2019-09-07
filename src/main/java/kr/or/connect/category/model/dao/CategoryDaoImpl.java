package kr.or.connect.category.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.connect.dto.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String ns = "kr.or.connect.mybatis.Category";
	
	
	@Override
	public List<Category> selectAllcategory() {
		List<Category> list = sqlSession.selectList(ns+".SelectAllCategory");
		return list;
	}


	@Override
	public void insertCategory(Category category) {
		sqlSession.insert(ns+".insert", category);
	}
}
