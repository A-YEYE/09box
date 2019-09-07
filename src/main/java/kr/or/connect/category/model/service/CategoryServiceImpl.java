package kr.or.connect.category.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.connect.category.model.dao.CategoryDao;
import kr.or.connect.dto.Category;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;
	
	@Override
	public List<Category> selectAllCategory() {
		return categoryDao.selectAllcategory();
	}

	@Override
	public void insert(Category category) {
		categoryDao.insertCategory(category);
	}
	

}
