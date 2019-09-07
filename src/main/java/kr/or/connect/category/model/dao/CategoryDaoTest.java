package kr.or.connect.category.model.dao;

import java.util.List;

import org.springframework.context.support.GenericXmlApplicationContext;

import kr.or.connect.dto.Category;

public class CategoryDaoTest {

	public static void main(String[] args) {
//		CategoryDaoImpl dao = new CategoryDaoImpl();
//		
//		List<Category> list = dao.selectAllcategory();
//		for(Category cate : list) {
//			System.out.println(cate);
//		}
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationContext.xml");
		CategoryDaoImpl g = ctx.getBean("categoryDaoImpl", CategoryDaoImpl.class);
		
		List<Category> list = g.selectAllcategory();
		for(Category cc : list) {
			System.out.println(cc);
		}
		ctx.close();

	}

}
