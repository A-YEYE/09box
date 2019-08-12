package kr.or.connect.index.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.connect.category.model.service.CategoryService;
import kr.or.connect.dto.Goods;
import kr.or.connect.goods.model.service.GoodsService;

@Controller
public class indexController {
	@Autowired
	GoodsService goodsService;
	@Autowired
	CategoryService categoryService;
	
//	@GetMapping("/")
//	public ModelAndView list2() {
//		List<Goods> list2 = goodsService.selectAll();
//				
//		return new ModelAndView("list2", "list2", list2);
//	}
}
