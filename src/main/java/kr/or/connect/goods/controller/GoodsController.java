package kr.or.connect.goods.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.or.connect.buyOption.model.service.BuyOptionService;
import kr.or.connect.category.model.service.CategoryService;
import kr.or.connect.dto.BuyOption;
import kr.or.connect.dto.Category;
import kr.or.connect.dto.Goods;
import kr.or.connect.goods.model.service.GoodsService;
import kr.or.connect.utils.UploadFileUtils;

@Controller
public class GoodsController {
	@Autowired
	GoodsService goodsService;
	@Autowired
	CategoryService categoryService;
	@Resource(name="uploadPath")
	private String uploadPath;
	@Autowired
	BuyOptionService buyOptionService;
		
	// list2->blog (list-> write)
	@GetMapping(path="/blog")
	public ModelAndView create() {
		List<Category> category = categoryService.selectAllCategory();
		ModelAndView mv = new ModelAndView("blog", "category", category);
		
		return mv;
	}
	
	//글 쓰기	
	@PostMapping(path="/")
	public String create(@ModelAttribute Goods goods, MultipartFile file, 
			@RequestParam(value="itemcode") String[] itemcode, 
			@RequestParam(value="itemname") int[] itemname,
							HttpServletRequest request) {
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 try {
			fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

	//	goods.setGdsImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		goods.setImage(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
				
		goodsService.insert(goods);		
//		System.out.println(goods);

		List<Goods> list2 = goodsService.optionSelect();
		Goods end = list2.get(list2.size()-1);	// list2의 마지막 값 구하기
		
		saveBuyOption(itemcode, itemname, end.getRnum());
//		System.out.println("goods.getRnum(): " + goods.getRnum());
		return "redirect:/";
	}

	/*제품 옵션 db에 저장한다.*/
	private void saveBuyOption(String[] itemcode, int[] itemname, int rnum) {
		BuyOption buyOption;
		for(int i=0; i<itemcode.length; i++) {
			buyOption = new BuyOption(itemcode[i], itemname[i], rnum);
			buyOptionService.insert(buyOption);
		}
	}
	

	
//	입력한 글 보기
	@GetMapping(path="/detail")
	public String detail(@RequestParam(name="rnum", required=false)int rnum,	
			ModelMap model, HttpSession httpSession) {
		
		Goods goods = goodsService.selectOne(rnum);
//		System.out.println(rnum + " , " + goods);
		
		model.addAttribute("content",  goods.getContent());
		model.addAttribute("rnum", goods.getRnum());
		model.addAttribute("categoryCode", goods.getCategoryCode());
		model.addAttribute("goodsName", goods.getGoodsName());
		model.addAttribute("sellStart", goods.getSellStart());
		model.addAttribute("sellEnd", goods.getSellEnd());
		model.addAttribute("goalNum", goods.getGoalNum());
		model.addAttribute("sellNum", goods.getSellNum());
		model.addAttribute("image", goods.getImage());
		model.addAttribute("deliveryCharge", goods.getDeliveryCharge());
		 
		
		// 현재 날짜
		Date date = new Date(); 		
		
		// 종료날짜의 time.
		long reqDateTime = goods.getSellEnd().getTime();
		
		// 현재날짜의 time.
		long curDateTime = date.getTime(); 
		
		// 종료시간-현재시간
		long time = (curDateTime - reqDateTime); 
		
		// 일
		long day = time / (24*60*60*1000);
		model.addAttribute("day", day);
		// 시간
		long hour = time / (60*60*1000)%24;
		model.addAttribute("hour", hour);
				
//		if(reqDateTime < curDateTime) {
//			
//			if(goods.getSellNum() < goods.getGoalNum()) {
//				goods.setProgress(1);
//			}else {
//				goods.setProgress(2);
//			}
//			model.addAttribute("progress", goods.getProgress());
//			goodsService.insert(goods);	
//		}
		List<BuyOption> buyOption = buyOptionService.selectOneBuyOption(rnum);
		model.addAttribute("buyOption", buyOption);
				
		return "detail";
	}
	
	// 결제
	@PostMapping(path="/sale")
	public ModelAndView create(@RequestParam(value="item_index") int[] item_index,	// 아이템 코드
			@RequestParam(value="item_name") String[] item_name, 	// 구매하려는 아이템 품명
			@RequestParam(value="option_count") int[] option_count,	// 구매하는 아이템 갯수
			@RequestParam(value="item_price") int[] item_price,	// 구매하려는 아이템 가격 * 갯수
			@RequestParam(value="rnum") int rnum, 
			HttpServletRequest request, HttpSession session) {
		Map<String, Object> map;
		List<Map<String, Object>> optionList = new ArrayList<Map<String, Object>>();
		int totalPrice = 0;
		for(int i=0; i<item_index.length; i++) {
			map = new HashMap();
			map.put("buyOptionCode", item_index[i]);
			map.put("optionName", item_name[i]);
			map.put("optionPrice", item_price[i]);
			map.put("optionCount", option_count[i]);
			optionList.add(map);
			totalPrice += item_price[i];
		}
		ModelAndView mv = new ModelAndView("sale", "optionList", optionList);
		
		// 배송비 구하기
		Goods goods = goodsService.selectOne(rnum);
		int deliveryCharge = goods.getDeliveryCharge();
		
		if(deliveryCharge == 2500) {
			deliveryCharge = 2500;
		}else if(deliveryCharge == 0) {
			deliveryCharge = 0;
		}else {
			if(totalPrice > deliveryCharge) {
				deliveryCharge = 0;
			}else {
				deliveryCharge = 2500;
			}
		}
		
		mv.addObject("deliveryCharge", deliveryCharge);
		mv.addObject("totalPrice", totalPrice);
		mv.addObject("rnum", rnum);
		
		
		return mv;
	}
//	카테고리
//	@GetMapping(path="/detail")
//	public String list(ModelMap model) {
//		List<Category> category = categoryService.selectAllCategory();
//		model.addAttribute("category", JSONArray.fromObject(category));
//		return "detail";
//	}
//	카테고리
//	@GetMapping(path="/blog")
//	public String list(ModelAndView model) {
//		List<Category> category = categoryService.selectAllCategory();
//		String view = "blog";
//		model = new ModelAndView(view, "category", category);
//		return "blog";
//	}

	

//
//	
////	입력하고 넘어가는 창
//	@GetMapping(path="/portfolio")
//	public String behindCreate(ModelMap model) {
//		List<Goods> list = goodsService.selectAll();
//		model.addAttribute("list", list);
//		return "portfolio";
//	}
}
