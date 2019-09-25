package kr.or.connect.goods.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import kr.or.connect.dto.Member;
import kr.or.connect.dto.Reply;
import kr.or.connect.goods.model.service.GoodsService;
import kr.or.connect.interceptor.Auth;
import kr.or.connect.reply.service.ReplyService;
import kr.or.connect.utils.UploadFileUtils;

@Controller
public class GoodsController {
	@Autowired
	GoodsService goodsService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	ReplyService replyService;
	@Resource(name="uploadPath")
	private String uploadPath;
	@Autowired
	BuyOptionService buyOptionService;
		
	// list2->blog (list-> write)
	@Auth
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
//		Goods end = list2.get(list2.size()-1);	// list2의 마지막 값 구하기
		Goods end = null;
		for(Goods g : list2) {
			end = g;
			break;
		}
		
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
			ModelMap model, HttpServletRequest request) throws ParseException {
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
		model.addAttribute("id", goods.getId());
		 		
		// 현재 날짜
		Date date = new Date();
		// 종료 날짜
		Date enDate= goods.getSellEnd();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		c.setTime(enDate);
		c.add(Calendar.DATE, 1);
		String nextDate = sdf.format(c.getTime());
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");

		Date to = transFormat.parse(nextDate);
		// 종료날짜의 time.
		long reqDateTime = to.getTime();	// 종료시간은 다음날 자정까지.(+1)
		// 현재날짜의 time.
		long curDateTime = date.getTime(); 
		// 현재시간-종료시간
		long time = (curDateTime - reqDateTime); 
		model.addAttribute("time", time);
		// 일
		long day = time / (24*60*60*1000);
		model.addAttribute("day", day);
		// 시간
		long hour = time / (60*60*1000)%24;
		model.addAttribute("hour", hour);

		List<BuyOption> buyOption = buyOptionService.selectOneBuyOption(rnum);
		model.addAttribute("buyOption", buyOption);
		model.addAttribute("product_code", rnum);
		
		// 댓글
		String reply = (String)request.getParameter("reply");
		List<Reply> listReply = replyService.selectAll();
		Reply finalreply =listReply.get(listReply.size()-1);	// 마지막 리플
		int replyParent;
		
		if(finalreply.getId()==null) {
			replyParent = 1;
		}else {
			replyParent = finalreply.getReplyCode()+1;
		}
		
		
		model.addAttribute("reply", reply);
		model.addAttribute("listReply", listReply);
		model.addAttribute("replyParent", replyParent);
				
		return "detail";
	}
	
	// 결제
	@PostMapping(path="/sale")
	public ModelAndView create(@RequestParam(value="item_index") int[] item_index,	// 아이템 코드
			@RequestParam(value="item_name") String[] item_name, 	// 구매하려는 아이템 품명
			@RequestParam(value="option_count") int[] option_count,	// 구매하는 아이템 갯수
			@RequestParam(value="item_price") int[] item_price,	// 구매하려는 아이템 가격 * 갯수
			@RequestParam(value="rnum") int rnum, 
			@RequestParam(value="loginId") String loginId, 
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
		mv.addObject("loginId", loginId);
		
		return mv;
	}
	
	// 내가 판 물건들
	@GetMapping(path="/mySell")
	public String mySell(HttpSession session, ModelMap model) {
		String id = (String) session.getAttribute("loginId");
		System.out.println("id: " + id);
		
		List<Goods> list = goodsService.selectMySell(id);
		System.out.println(list);
		
		model.addAttribute("list", list);
		
		return "mySell";
	}
	
	// 댓글 달기
	@PostMapping(path="/replySave")
	public String replySave(Reply reply, HttpSession session, HttpServletResponse response,
							@RequestParam(value="loginId") String loginId, 
							@RequestParam(value="product_code") int product_code, 
							@RequestParam(value="reply_order") int reply_order, 
							@RequestParam(value="reply_parent") int reply_parent, 
							@RequestParam(value="reply_content") String reply_content) {
		System.out.println("session: "+session);
		System.out.println("loginId: "+loginId);
		System.out.println("product_code: "+product_code);
		System.out.println("reply_order: "+reply_order);
		System.out.println("reply_parent: "+reply_parent);
		System.out.println("reply_content: "+reply_content);
		if(loginId !=null) {//로그인 중
		//	Member m = ((Member)session.getAttribute("userLoginInfo"));
			reply.setId(loginId);
			reply.setRnum(product_code);
			reply.setReplyOrder(reply_order);
			reply.setReplyParent(reply_parent);
			reply.setReplyContent(reply_content);
			replyService.inserReply(reply);
			if(reply.getReplyParent()==0) {
				replyService.updateReply(reply.getReplyCode());
			}
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>alert('다시 로그인해주세요'); location.href='./loginform';</script>");
				out.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:/detail?rnum="+product_code+"&reply=on";
	}
	
}
