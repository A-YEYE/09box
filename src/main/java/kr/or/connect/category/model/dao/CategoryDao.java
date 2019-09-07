package kr.or.connect.category.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.or.connect.dto.Category;

public interface CategoryDao {
	List<Category> selectAllcategory();
	void insertCategory(Category category);
}
