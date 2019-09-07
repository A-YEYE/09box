package kr.or.connect.category.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.connect.dto.Category;

public interface CategoryService {
	List<Category> selectAllCategory();
	void insert(Category category);
}
