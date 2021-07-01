package com.binfree.web.main.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.binfree.web.main.service.MainService;
import com.binfree.web.review.domain.ReviewVO;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Log4j
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	MainService mainService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		/*
		 * ArrayList<List<ReviewVO>> list = new ArrayList<List<ReviewVO>>();
		 * 
		 * for(int i = 1 ; i <= 5 ; i++) { List<ReviewVO> list1 =
		 * mainService.getReviewList(i); list.add(list1); }
		 */
		
		List<ReviewVO> list = mainService.getReviewList();
		
		model.addAttribute("list", list);
		
		System.out.println(list);
		
		
		return "home";
	}	

	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public void service() {
		
	}	
	
}
