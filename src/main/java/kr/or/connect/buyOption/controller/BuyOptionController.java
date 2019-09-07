package kr.or.connect.buyOption.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.or.connect.buyOption.model.service.BuyOptionService;
import kr.or.connect.dto.BuyOption;


public class BuyOptionController {
	@Autowired
	BuyOptionService buyOptionService;
	
	@PostMapping(path="/blog")
	public String insert(@ModelAttribute BuyOption buyOption, MultipartFile file,
			HttpServletRequest request) {
		buyOptionService.insert(buyOption);
		
		return "redirect:blog";
	}
	
	@GetMapping(path="/blog")
	public ModelAndView create() {
		List<BuyOption> buyOptionList = buyOptionService.selectAll();
		ModelAndView mv = new ModelAndView("blog", "buyOptionList", buyOptionList);
		return mv;
	}
}
