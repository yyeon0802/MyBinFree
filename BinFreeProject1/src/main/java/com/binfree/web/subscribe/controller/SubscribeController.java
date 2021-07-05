package com.binfree.web.subscribe.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.binfree.web.review.domain.ReviewVO;
import com.binfree.web.subscribe.domain.SubscribeVO;
import com.binfree.web.subscribe.service.SubscribeServiceImpl;
import com.binfree.web.user.domain.UsersVO;
import com.binfree.web.user.service.UsersServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/subscribe/*")
@Log4j
@AllArgsConstructor
public class SubscribeController {

	private SubscribeServiceImpl service;

	private UsersServiceImpl userService;
	
	@GetMapping("/main")
	public void subscribe(Model model) {

		for (int i = 0; i < service.getSubInfo().size(); i++) {
			
			// 스타터
			if (service.getSubInfo().get(i).getSubId() == 1) {
				model.addAttribute("starter", service.getSubInfo().get(i));
				
			// 베스트
			} else 	if (service.getSubInfo().get(i).getSubId() == 2) {
				model.addAttribute("best", service.getSubInfo().get(i));
				
			// 프리미엄
			} else 	if (service.getSubInfo().get(i).getSubId() == 3) {
				model.addAttribute("primium", service.getSubInfo().get(i));
			}
		}
		
	}

	@GetMapping("/order")
	public void order(Model model, SubscribeVO sub) {

		model.addAttribute("sub", sub);
	}

	@GetMapping("/pay")
	public void pay(Model model, SubscribeVO sub, @RequestParam Map<String, String> paramMap) {
		
		UsersVO user = new UsersVO();
		user.setSubItem(paramMap.get("subItem"));
		user.setEmail(paramMap.get("email"));
		user.setSubName(paramMap.get("subName"));
		user.setSubPhone(paramMap.get("subPhone"));
		user.setZipCode(paramMap.get("zipCode"));
		user.setLoc(paramMap.get("loc"));
		user.setInputLoc(paramMap.get("inputLoc"));
		user.setSubStart(paramMap.get("subStart"));
		
		userService.setSubInfo(user);
		
		model.addAttribute("sub", sub);
	}

}
