package kr.or.connect;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.or.connect.category.model.service.CategoryService;
import kr.or.connect.dto.Category;
import kr.or.connect.dto.Goods;
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
	public String behindCreate(HttpServletRequest request, ModelMap model) {
	//	int totalCount = goodsService.totalcount();
		
		// 전체
		List<Goods> list2 = goodsService.selectAll();
		model.addAttribute("list2", list2);
		
		// 카테고리 리스트
		List<Category> category = categoryService.selectAllCategory();
		model.addAttribute("category", category);
		
		
		// 카테고리별
		Map<String, Object> map = new HashMap<>();
		List<String> categoryList = new ArrayList<>();
		for(int i=0; i<category.size(); i++) {
			categoryList.add(category.get(i).getCategoryCode());
		}
		map.put("categoryList", categoryList);
		
		List<Goods> one =  goodsService.selectCategoryOne(map);
		model.addAttribute("map", one);
		model.addAttribute("one", one);
		
		List<Goods> two =  goodsService.selectCategoryTwo(map);
		model.addAttribute("two", two);
		
		List<Goods> three =  goodsService.selectCategoryThree(map);
		model.addAttribute("three", three);
		
		List<Goods> four =  goodsService.selectCategoryFour(map);
		model.addAttribute("four", four);
		
		
		
		return "list2";
	}
	
	@RequestMapping(path="/")
	public String search(HttpServletRequest req) {
		String categoryCode = req.getParameter("categoryCode");
//		String search = req.getParameter("name");
		System.out.println("categoryCode: "+categoryCode);
//		System.out.println("search: "+search);
//		String encText = "";
//		try {
//			encText = URLEncoder.encode(search, "UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}

		return "redirect:/?categoryCode="+categoryCode;
	}
}
