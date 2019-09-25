package kr.or.connect.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.or.connect.dto.Criteria;
import kr.or.connect.dto.Goods;
import kr.or.connect.dto.Member;
import kr.or.connect.goods.model.service.GoodsService;
import kr.or.connect.interceptor.Auth;
import kr.or.connect.interceptor.Auth.Role;
import kr.or.connect.member.service.MemberService;

@Controller
public class AdminController {
	@Autowired
	GoodsService goodsService;
	@Autowired
	MemberService memberService;
	
	// 관리자 페이지 이동
	@Auth(role=Role.ADMIN)
	@GetMapping(path="/admin")
	public ModelAndView admin(HttpServletRequest request,
			Criteria criteria, ModelMap model) {
		List<Goods> list = goodsService.optionSelect();   
		ModelAndView mv = new ModelAndView("admin", "list", list);
		
		return mv;
	}
	
	// 상품삭제
	@GetMapping("/delete")
	public String delete(@RequestParam("rnum") int rnum) {
		goodsService.deleteGoods(rnum);
		return "redirect:admin";
	}
	
	// 회원관리         
	@Auth(role=Role.ADMIN)  
	@GetMapping(path="/adminMember")
	public ModelAndView adminMember(HttpServletRequest request, ModelMap model) {
		List<Member> list = memberService.selectAll();
		ModelAndView mv = new ModelAndView("adminMember", "list", list);
		
		return mv;
	} 
	     
	// 회원삭제
	@GetMapping("/deleteMember")                       
	public String deleteMember(@RequestParam("id") int id) {
		memberService.deleteMember(id);
		return "redirect:adminMember";
	}
	
	// 회원수정
	@GetMapping(path="/adminMemberUpdate")
	public ModelAndView updateMember(Member member, String id) {
		member = memberService.selectOneMember(id);
		ModelAndView mv = new ModelAndView("adminMemberUpdate", "member", member);
		return mv;
	}
	
	// 회원수정
	@PostMapping(path="/adminMemberUpdate2")
	public String updateMember2(@RequestParam(name="id", required=false)String id,
			@RequestParam(name="name", required=false)String name,
			@RequestParam(name="email", required=false)String email,
			@RequestParam(name="authority", required=false)String authority) {
		
		System.out.println("수정: " + id);
		System.out.println("수정: " + name);
		System.out.println("수정: " + email);
		System.out.println("수정: " + authority);
		
		Member m = new Member();
		m.setId(id);
		m.setName(name);
		m.setEmail(email);
		m.setAuthority(authority);		
		
		memberService.update(m);
		
		return "adminMemberUpdate2";
	}
}
