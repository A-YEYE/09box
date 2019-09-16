package kr.or.connect;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.connect.category.model.service.CategoryService;
import kr.or.connect.dto.Category;
import kr.or.connect.dto.Criteria;
import kr.or.connect.dto.Goods;
import kr.or.connect.dto.PageMaker;
import kr.or.connect.goods.model.service.GoodsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	GoodsService goodsService;
	@Autowired
	CategoryService categoryService;
	
	// main
	@GetMapping(path="/")
	public String behindCreate(HttpServletRequest request,
								Criteria criteria,
								ModelMap model) {
	//	int totalCount = goodsService.totalcount();
		// 페이징
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		
		pageMaker.setTotalCount(goodsService.totalcount());
		
		List<Map<String, Object>> all = goodsService.selectAll(criteria);
		model.addAttribute("all", all);
		model.addAttribute("pageMaker", pageMaker);
		
		// 전체
	//	List<Goods> list2 = goodsService.selectAll();
	//	model.addAttribute("list2", list2);
		
		// 카테고리 리스트
		List<Category> category = categoryService.selectAllCategory();
		model.addAttribute("category", category);
		
		
		// 카테고리별
		Map<String, Object> map = new HashMap<>();
		List<String> categoryList = new ArrayList<>();
		for(int i=0; i<category.size(); i++) {
			categoryList.add(category.get(i).getCategoryCode());
		}
		map.put("root", "../../");
		map.put("categoryList", categoryList);
		
//		List<Goods> one =  goodsService.selectCategoryOne(map);
//		model.addAttribute("map", one);	// 카테고리
//		model.addAttribute("one", one);
//		
//		List<Goods> two =  goodsService.selectCategoryTwo(map);
//		model.addAttribute("two", two);
//		
//		List<Goods> three =  goodsService.selectCategoryThree(map);
//		model.addAttribute("three", three);
//		
//		List<Goods> four =  goodsService.selectCategoryFour(map);
//		model.addAttribute("four", four);
		
		
		
		return "list2";
	}
	
//	@RequestMapping(value="/")
	@GetMapping(path="category/{categoryCode}")
	public ModelAndView search(@PathVariable(value="categoryCode")String categoryCode) {
		// 선택된 카테고리(list) 
		List<Goods> list = goodsService.selectCategory(categoryCode);

		ModelAndView mv = new ModelAndView("list2", "list", list);
		mv.addObject("categoryCode", categoryCode);
		mv.addObject("root", "../");
		
		List<Category> category = categoryService.selectAllCategory();
		mv.addObject("category", category);
		
		return mv;
	}

}



















