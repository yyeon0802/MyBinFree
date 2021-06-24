package com.binfree.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.binfree.domain.UsersVO;
import com.binfree.service.UsersService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Controller
@RequestMapping("/user/*")
public class UsersController {
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
	
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	@Autowired
	private UsersService usersService;

	/*
	 * @Resource(name = "loginUserVO")
	 * 
	 * @Lazy private UsersVO loginUserVO;
	 */
	
	
	@GetMapping("/login")   //********************
	public void loginInput(String error, String logout, Model model) {
		log.info("error: " + error);
		log.info("logout: " + logout);
		
		if (error != null) {
			model.addAttribute("error", "등록되지 않은 아이디나 비밀번호 입니다. 다시 입력해주세요.");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "로그아웃 되었습니다!");
		}
	}
	
	@GetMapping("/logins")
	public String logins() {
		return "user/login";
	}
	
	// 회원가입
			@RequestMapping(value="/join",method=RequestMethod.POST)
			public String joinPOST(UsersVO user) throws Exception{
				logger.info("join 진입");
				
				String password = user.getPassword();
				password = pwencoder.encode(password);
				user.setPassword(password);
				
				usersService.userJoin(user);
				usersService.insertUserAuth(user);
				
				
				logger.info("join service 성공");
				return "redirect:/";
			}
			
		
	@GetMapping("/signup")
	public String signup() {
		return "user/signup";
	}

	
	@GetMapping("/mypage")
	public void goMypage() {
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		//System.out.println(principal.toString().);
		String email;
		if(principal instanceof UsersVO) {
			email = ((UsersVO)principal).getEmail();
		} else {
			email = principal.toString();
		}
		
		System.out.println("mypageController 진입" + email);
		
		
		
	}

	
	
}
