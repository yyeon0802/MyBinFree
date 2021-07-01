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
import com.binfree.web.review.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/review/*")
@Log4j
@AllArgsConstructor
public class ReviewController {

	private ReviewService service;

	@GetMapping("/subscribe")
	public String subscribe() {
		return "/review/subscribe";
	}
	
	@GetMapping("/list")
	public void getListWithPaging(Model model, Criteria cri) {
		
		log.info("리뷰 리스트 조회");
		
		int total = service.getTotal();
		int star = service.getStarTotal();
		
		double starSum = star/total;
		
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		
		model.addAttribute("pageMaker", pageMake);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("starSum", starSum);
	}
	
//	@GetMapping("/subscribe")
//	public String getListWithPaging(Model model) {
//		
//		log.info("subscribe");
//		model.addAttribute("list", service.getListWithPaging());
//		log.info(service.getListWithPaging());
//		
//		return "review/subscribe";
//	}
	@PostMapping("/insert")
	public String insert(ReviewVO vo, Model model, RedirectAttributes rtts) {
		log.info("글 등록: " + vo);
		
		System.out.println(vo.getEmail());

		service.reviewInsert(vo);
		
		rtts.addFlashAttribute("result", vo.getId());
		model.addAttribute("email", vo.getEmail());

		return "redirect:/review/subscribe";
	}

	@GetMapping("/get")
	public String get(@RequestParam("id") int id, Model model) {
		
		log.info("/get"+id);
		model.addAttribute("vo", service.get(id));
		
		return "redirect:/review/subscribe";
	}

	@PostMapping("/update")
	@ResponseBody
	public String update(@RequestParam Map<String, String> paramMap, RedirectAttributes rtts) {
		System.out.println(paramMap.get("id"));
		
		ReviewVO vo = new ReviewVO();
		vo.setId(Integer.parseInt(paramMap.get("id")));
		vo.setStar(Integer.parseInt(paramMap.get("star")));
		vo.setContents(paramMap.get("contents"));
		if(service.reviewUpdate(vo)) {
			rtts.addFlashAttribute("result", "success");
		}
		return "redirect:/review/subscribe";
	}

	@GetMapping("/delete")
	public String remove(@RequestParam Map<String, String> paramMap, RedirectAttributes rtts) {
		log.info("delete"+ paramMap.get("id"));
		
		if(service.reviewDelete(Integer.parseInt(paramMap.get("id")))) {
			rtts.addFlashAttribute("result", "success");
		}
		return "redirect:/review/subscribe";
	}
}
