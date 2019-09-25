package kr.or.connect.deal.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import kr.or.connect.buyOption.model.service.BuyOptionService;
import kr.or.connect.dto.BuyOption;
import kr.or.connect.dto.Goods;
import kr.or.connect.dto.PaymentInfo;
import kr.or.connect.dto.PaymentOption;
import kr.or.connect.goods.model.service.GoodsService;
import kr.or.connect.member.service.MemberService;
import kr.or.connect.paymentInfo.service.PaymentInfoService;
import kr.or.connect.paymentOption.service.PaymentOptionService;
@Controller
public class DealController {
	//rest api 키, rest api secret
	private IamportClient client =  new IamportClient("5092844358352830", "rNfG3MSCQOPFef0J7kjk9ClaSMiijW9LKprObkq28gInvI7D2qXc2jmV6EepBoblNCaZXA26QKtmtAZw");
	@Autowired
	PaymentOptionService paymentOptionService;
	@Autowired
	PaymentInfoService paymentInfoService;
	@Autowired
	MemberService member;
	@Autowired
	GoodsService goodsService;
	@Autowired
	BuyOptionService buyOptionService;
	
	@RequestMapping(value = "payments/complete", method = RequestMethod.POST, produces="application/json")
	@ResponseBody
	public IamportResponse<Payment> getToken(HttpServletRequest request ,HttpServletResponse response, @RequestParam("imp_uid") String imp_uid) throws Exception{
		
		return client.paymentByImpUid(imp_uid);
	}
	
	@PostMapping(path="/paySuccess")
	public String paySuccess( @RequestParam(value="rnum") int rnum,/*상품코드*/
		@RequestParam(value="buyOptionCode") int[] buyOptionCode, /*옵션코드*/
		@RequestParam(value="loginId") String[] loginId, /*구매하는 id*/
		@RequestParam(value="optionCount") int[] optionCount, /*옵션 구매 갯수*/
		@RequestParam(value="name") String receiveName, /*수신자이름*/
		@RequestParam(value="phone") int receivePhon, /*핸드폰번호*/
		@RequestParam(value="postCode") String receivePostCode,/*우편번호*/
		@RequestParam(value="address") String receiveAddr1,/*주소*/
		@RequestParam(value="detailAddress") String receiveAddr2,/*상세주소*/
		@RequestParam(value="payDeliveryCharge") int payDeliveryCharge,/*배송비*/
		@RequestParam(value="totalPrice") int totalPrice,/*총결제금액*/
		@RequestParam(value="imp_uid") String impUid,/*결제승인번호*/
		HttpSession session, HttpServletResponse response, ModelMap model) {
		
		String[] idList = loginId;
		String id = idList[0];		
		
		// 판매정보(PaymentInfo) insert
		PaymentInfo paymentInfo = new PaymentInfo(2, id, receiveName, receivePhon, receiveAddr1,
				receiveAddr2, receivePostCode, rnum, payDeliveryCharge, totalPrice, impUid );
		paymentInfoService.insertPayInfo(paymentInfo);
		
		// 판매옵션(PaymentOption) insert
		List<PaymentInfo> list = paymentInfoService.selectAll();
		PaymentInfo paymentInfo2 = list.get(list.size()-1);	// list의 마지막 값 구하기
		int dealCode = paymentInfo2.getDealCode();
		
		PaymentOption paymentOption = null;
		for(int i=0; i<buyOptionCode.length; i++) {
			paymentOption = new PaymentOption(buyOptionCode[i], paymentInfo2.getDealCode(), optionCount[i]);
			paymentOptionService.insertPaymentOption(paymentOption);
		}
		
		// 팔린갯수 업데이트
		int sellNum =0;
		for(int i=0; i<buyOptionCode.length; i++) {
			sellNum += optionCount[i];
			Goods goods = new Goods();
			goods.setRnum(rnum);
			goods.setSellNum(sellNum);
			goodsService.updqteSellNum(goods);
		}
		
		// 결제 성공 후 보여지는 화면
		model.addAttribute("payOption", getPaymentOption(dealCode));
		model.addAttribute("payInfo", getPaymentInfo(dealCode));
		System.out.println("1: " + model.addAttribute("payOption", getPaymentOption(dealCode)));
		System.out.println("2: " + model.addAttribute("payInfo", getPaymentInfo(dealCode)));
		

		return "paySuccess";
	}
	
	// 구매한 옵션 가져오기
	public List<Map<String, Object>> getPaymentOption(int dealCode) {
		List<PaymentOption> payOptionList = paymentOptionService.selectOnePaymentOption(dealCode);
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = null;
		for(int i=0; i<payOptionList.size(); i++) {
			int buytOptionCode = payOptionList.get(i).getBuyOptionCode();
			BuyOption buyOption = buyOptionService.buyOption(buytOptionCode);
			String optionName = buyOption.getOptionName();
			int optionPrice = buyOption.getOptionPrice();
			int saleOptionCount = payOptionList.get(i).getOptionCount();
			map = new HashMap<String, Object>();
			map.putIfAbsent("optionName", optionName);
			map.putIfAbsent("optionPrice", optionPrice);
			map.putIfAbsent("saleOptionCount", saleOptionCount);
			list.add(map);
		}
		return list;
	}
	
	// 구매정보 가져오기
	public PaymentInfo getPaymentInfo(int dealCode) {
		PaymentInfo payInfo = paymentInfoService.selectOne(dealCode);
		return payInfo;
	}
	
	@GetMapping(path="/payFail")
	public String payFail( @RequestParam(value="rnum") int rnum,/*상품코드*/
		@RequestParam(value="buyOptionCode") int[] buyOptionCode, /*옵션코드*/
		@RequestParam(value="optionCount") int[] optionCount, /*옵션 구매 갯수*/
		@RequestParam(value="name") String receiveName, /*수신자이름*/
		@RequestParam(value="phone") int receivePhon, /*핸드폰번호*/
		@RequestParam(value="postCode") String receivePostCode,/*우편번호*/
		@RequestParam(value="address") String receiveAddr1,/*주소*/
		@RequestParam(value="detailAddress") String receiveAddr2,/*상세주소*/
		@RequestParam(value="payDeliveryCharge") int payDeliveryCharge,/*배송비*/
		@RequestParam(value="totalPrice") int totalPrice,/*총결제금액*/
		@RequestParam(value="imp_uid") String impUid,/*결제승인번호*/
		HttpSession session, HttpServletResponse response) {
		
		String id = "member1";
		// 판매정보(PaymentInfo) insert
		PaymentInfo paymentInfo = new PaymentInfo(1, id, receiveName, receivePhon, receiveAddr1,
				receiveAddr2, receivePostCode, rnum, payDeliveryCharge, totalPrice, impUid );
		paymentInfoService.insertPayInfo(paymentInfo);
		
		// 판매옵션(PaymentOption) insert
		List<PaymentInfo> list = paymentInfoService.selectAll();
		PaymentInfo paymentInfo2 = list.get(list.size()-1);	// list의 마지막 값 구하기
		
		PaymentOption paymentOption = null;
		for(int i=0; i<buyOptionCode.length; i++) {
			paymentOption = new PaymentOption(buyOptionCode[i], paymentInfo2.getDealCode(), optionCount[i]);
			paymentOptionService.insertPaymentOption(paymentOption);
		}
		
		// 팔린갯수 업데이트
		int sellNum =0;
		for(int i=0; i<buyOptionCode.length; i++) {
			sellNum += optionCount[i];
			Goods goods = new Goods();
			goods.setRnum(rnum);
			goods.setSellNum(sellNum);
			goodsService.updqteSellNum(goods);
		}
		
		return "payFail";
	}
	
	@GetMapping(path="/myOrder")
	public String myOrder(HttpSession session, 
							ModelMap model) {
		
		String id = (String) session.getAttribute("loginId");
		System.out.println("id: " + id);
		
		// id를 이용하여 rnum, dealCode 구하기
		model.addAttribute("orderInfo", getOrderInfo(id, model));
		System.out.println("과연?: " + model.addAttribute("payInfo", getOrderInfo(id, model)));
			
		return "myOrder";
	}  


	private List<PaymentInfo> getOrderInfo(String id, ModelMap model) {
		List<PaymentInfo> orderInfoList = paymentInfoService.selectAllPayinfo(id);
		System.out.println("orderInfoList: " + orderInfoList);
		
		List<PaymentOption> dealCodeList;
		int dealCode=0;
		List<Goods> goods;
		for(int i=0; i<orderInfoList.size(); i++) {
			dealCode = orderInfoList.get(i).getDealCode(); // dealCode 획득. paymentOption에 접근 가능
			System.out.println("dealCode: " + dealCode);
			// 구매한 옵션 정보  획득.
			model.addAttribute("dealCode", getPaymentOption(dealCode));
			
			int rnum = orderInfoList.get(i).getRnum();	// rnum획득. goods Table 접근 가능. 
			goods = goodsService.selectAllById(rnum);
			System.out.println("rnum: " + rnum);
			System.out.println("goods: " + goods);
			model.addAttribute("goods", goods);
		}    
		
		return orderInfoList;	// 이게 맞나??
	}
	
}







































