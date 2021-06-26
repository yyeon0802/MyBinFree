package com.binfree.web.user.controller;

import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.binfree.web.user.domain.UsersVO;
import com.binfree.web.user.service.UsersService;

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

	@GetMapping("/logins")
	public String logins(HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		UserDetails loginUserVO = (UserDetails)authentication.getPrincipal();
		String email = loginUserVO.getUsername();
		
		UsersVO loginUserInfo = new UsersVO();
		loginUserInfo = usersService.getLoginUserInfo(email);
		
		session.setAttribute("loginUserInfo", loginUserInfo);
		
		return "user/login";
	}
	
		
	@GetMapping("/signup")
	public String signup() {
		return "user/signup";
	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(UsersVO user, Model model) throws Exception {

		logger.info("join 진입");
		
		if(usersService.getEmail(user) == null) {
			
			String password = user.getPassword();
			password = pwencoder.encode(password);
			user.setPassword(password);
	
			usersService.userJoin(user);
			usersService.insertUserAuth(user);
	
			logger.info("join service 성공");
			return "redirect:/";
		} else {
			model.addAttribute("msg", "이미 존재하는 아이디입니다.");
			return "user/signup";
		}
	}
		
	
	@GetMapping("/mypage")
	public ModelAndView goMypage(HttpSession session) {
		
		//Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		//UserDetails loginUserVO = (UserDetails)authentication.getPrincipal();
		//String email = loginUserVO.getUsername();
		
		//UsersVO loginUserInfo = new UsersVO();
		//loginUserInfo = usersService.getLoginUserInfo(email);
		
		UsersVO loginUserInfo = (UsersVO)session.getAttribute("loginUserInfo");

		log.info("userInfo : " + loginUserInfo);
		
		//여기서 세션에 저장된걸 또 불러오면 안된다. 새로 getUserInfo 객체를 생성해서 넘겨줘야 반영 된다. 세션은 email만 가져오자.
		String email = loginUserInfo.getEmail();
		
		UsersVO getUserInfo = usersService.getLoginUserInfo(email);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/mypage");
		mv.addObject("email", loginUserInfo.getEmail());
		mv.addObject("name", getUserInfo.getName());
		mv.addObject("phone", getUserInfo.getPhone());
		mv.addObject("password", getUserInfo.getPassword());
		mv.addObject("subName", getUserInfo.getSubName());
		mv.addObject("subItem", getUserInfo.getSubItem());
		mv.addObject("subPhone", getUserInfo.getSubPhone());
		mv.addObject("subStart", getUserInfo.getSubStart());
		mv.addObject("subEnd", getUserInfo.getSubEnd());
		mv.addObject("zipCode", getUserInfo.getZipCode());
		mv.addObject("loc", getUserInfo.getLoc());
		mv.addObject("inputLoc", getUserInfo.getInputLoc());
		mv.addObject("myBuddy", getUserInfo.getMyBuddy());

		log.info("mypage mv : " + mv);
		
		return mv;
	
		/*
		 * Object principal =
		 * SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		 */
		//System.out.println(principal.toString().);
		/*
		 * String email; if(principal instanceof UsersVO) { email =
		 * ((UsersVO)principal).getEmail(); System.out.println("mypageController if 진입"
		 * + email); } else { email = principal.toString();
		 * System.out.println("mypageController else 진입" + email); }	 */
	}
	
	@ResponseBody
	@PostMapping("/modify_userInfo")
	public void modifyUserInfo(@RequestBody Map<String, String> paramMap) {
		
		UsersVO modifyUserInfo = new UsersVO();
		
		//String password = paramMap.get("password");
		//password = pwencoder.encode(password);
		
		modifyUserInfo.setEmail(paramMap.get("email"));
		modifyUserInfo.setPhone(paramMap.get("phone"));
		//modifyUserInfo.setPassword(password);
		
		usersService.setModifyUserInfo(modifyUserInfo);
	}
		
		
	@ResponseBody
	@PostMapping("/modify_subInfo")
	public void modifySubInfo(@RequestBody Map<String, String> paramMap, HttpServletRequest request) { 
		HttpSession session = request.getSession();
 
		UsersVO loginUserInfo = (UsersVO)session.getAttribute("loginUserInfo");
		
//		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//		
//		UserDetails loginUserVO = (UserDetails)authentication.getPrincipal();
//		String email = loginUserVO.getUsername();
		
		UsersVO modifySubInfo = new UsersVO();
		
		modifySubInfo.setEmail(loginUserInfo.getEmail());
		modifySubInfo.setSubName(paramMap.get("subName"));
		modifySubInfo.setSubPhone(paramMap.get("subPhone"));			
		modifySubInfo.setZipCode(paramMap.get("zipCode"));
		modifySubInfo.setLoc(paramMap.get("loc"));
		modifySubInfo.setInputLoc(paramMap.get("inputLoc"));
		
		System.out.println(modifySubInfo);
		
		usersService.setModifySubInfo(modifySubInfo);
		
	}
	
	@ResponseBody
	@PostMapping("/modify_pwd")
	public void modifyPwd(@RequestBody String getPwd, HttpServletRequest request) {
		
		log.info("getPwd : " + getPwd);
		HttpSession session = request.getSession();
		UsersVO loginUserInfo = (UsersVO)session.getAttribute("loginUserInfo");
		
		UsersVO modifyPwd = new UsersVO();
		
		String password = pwencoder.encode(getPwd);
		modifyPwd.setEmail(loginUserInfo.getEmail());
		modifyPwd.setPassword(password);
		
		usersService.setModifyPwd(modifyPwd);
		
	}
		
	@ResponseBody
	@PostMapping("/bye_user")
	public void byeUser(@RequestBody String getEmail) {
		System.out.println(getEmail);
		usersService.byeUser(getEmail);
		SecurityContextHolder.clearContext();
	}
	
	
}
