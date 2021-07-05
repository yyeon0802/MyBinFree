package com.binfree.web.review.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.binfree.web.review.domain.Criteria;
import com.binfree.web.review.domain.PageMakerDTO;
import com.binfree.web.review.domain.ReviewVO;
import com.binfree.web.review.service.ReviewServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/review/*")
@Log4j
@AllArgsConstructor
public class ReviewController {

	private ReviewServiceImpl service;
	
	@GetMapping("/list")
	public void getListWithPaging(Model model, Criteria cri) {
		
		log.info("리뷰 리스트 조회");
		
		// 별점별 평균 
		model.addAttribute("starNum", service.getStarNum());
		
		
		// 페이징 및 리스트
		int total = service.getTotal();
		int star = service.getStarTotal();
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		model.addAttribute("pageMaker", pageMake);
		model.addAttribute("list", service.getListWithPaging(cri));
		
		
		// 별점 평균
		double starSum = (double)star/(double)total;
		model.addAttribute("starSum", Math.round(starSum*100)/100.0);
	}
	
	@PostMapping("/insert")
	public String insert(ReviewVO vo, Model model, RedirectAttributes rtts) {
		log.info("글 등록: " + vo);
		System.out.println(service.getStarNum());
		
		System.out.println(vo.getEmail());

		service.reviewInsert(vo);
		
		rtts.addFlashAttribute("result", vo.getId());
		model.addAttribute("email", vo.getEmail());

		return "redirect:/review/list";
	}

	@GetMapping("/get")
	public String get(@RequestParam("id") int id, Model model) {
		
		log.info("/get"+id);
		model.addAttribute("vo", service.get(id));
		
		return "redirect:/review/list";
	}

	@PostMapping("/update")
	@ResponseBody
	public void update(@RequestParam Map<String, String> paramMap, RedirectAttributes rtts) {
		System.out.println(paramMap.get("id"));
		
		ReviewVO vo = new ReviewVO();
		vo.setId(Integer.parseInt(paramMap.get("id")));
		vo.setStar(Integer.parseInt(paramMap.get("star")));
		vo.setContents(paramMap.get("contents"));
		if(service.reviewUpdate(vo)) {
			rtts.addFlashAttribute("result", "success");
		}
	}

	@GetMapping("/delete")
	public String remove(@RequestParam Map<String, String> paramMap, RedirectAttributes rtts) {
		log.info("delete"+ paramMap.get("id"));
		
		if(service.reviewDelete(Integer.parseInt(paramMap.get("id")))) {
			rtts.addFlashAttribute("result", "success");
		}
		return "redirect:/review/list";
	}
}
