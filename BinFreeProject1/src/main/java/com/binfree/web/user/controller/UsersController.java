package com.binfree.web.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.binfree.web.user.domain.UsersVO;
import com.binfree.web.user.security.CustomUserDetails;
import com.binfree.web.user.security.CustomUserDetailsService;
import com.binfree.web.user.service.KakaoAPI;
import com.binfree.web.user.service.UsersService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/user/*")
public class UsersController {

	@Setter(onMethod_ = @Autowired)
	private BCryptPasswordEncoder pwencoder;

	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);

	@Autowired
	private UsersService usersService;
	
	@Autowired
	private CustomUserDetailsService customService;

	@Autowired
	private KakaoAPI kakao;
	

	@GetMapping("/loginpage")
	public String loginInput(String error, String logout, Model model) {
		log.info("error: " + error);
		log.info("logout: " + logout);

		if (error != null) {
			model.addAttribute("error", "등록되지 않은 아이디나 비밀번호 입니다. 다시 입력해주세요.");
		}

		if (logout != null) {
			model.addAttribute("logout", "로그아웃 되었습니다!");
		}
		return "user/login_page";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "user/signup";
	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(UsersVO user, Model model) throws Exception {

		logger.info("join 진입");

		if (usersService.getEmail(user) == null) {

			String password = user.getPassword();
			password = pwencoder.encode(password);
			user.setPassword(password);
			user.setEnabled(true);
			user.setAuth("ROLE_MEMBER");

			usersService.userJoin(user);

			logger.info("join service 성공");
			return "redirect:/";
		} else {
			model.addAttribute("msg", "이미 존재하는 아이디입니다.");
			return "user/signup";
		}
	}

	// 중복 체크
	@ResponseBody
	@RequestMapping(value = "/emailCheck", method = RequestMethod.POST)
	// 메시지 전달을 위해 리턴 타입 String으로 변환
	public String emailCheck(
			@RequestBody String email/* email이 잘 받아와지는 지 확인하시고 안 받아와지면 @RequestParam Map<String, String> paramMap */)
			throws Exception {
		/* email 확인 */
		System.out.println(email);

		/*
		 * email 확인 후 email일 null 일 때는 paramMap으로 매개변수 수정하시고 String email =
		 * paramMap.get("email");
		 */

		int count = 0;
		count = usersService.emailCheck(email);
		System.out.println(count);
		// 고기천 추가
		if (count == 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}

	@GetMapping("/mypage")
	public String goMypage(Model model) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		CustomUserDetails loginUserVO = (CustomUserDetails) authentication.getPrincipal();

		CustomUserDetails loginUserInfo = new CustomUserDetails();
		loginUserInfo = usersService.getLoginUserInfo(loginUserVO.getUsername());

		model.addAttribute("userInfo", loginUserInfo);

		return "user/mypage";
	}

	@ResponseBody
	@PostMapping("/modify_userInfo")
	public void modifyUserInfo(@RequestBody Map<String, String> paramMap) {

		UsersVO modifyUserInfo = new UsersVO();
		
		modifyUserInfo.setEmail(paramMap.get("email"));
		modifyUserInfo.setPhone(paramMap.get("phone"));
		
		usersService.setModifyUserInfo(modifyUserInfo);

	}

	@ResponseBody
	@PostMapping("/modify_subInfo")
	public void modifySubInfo(@RequestBody Map<String, String> paramMap, HttpServletRequest request) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomUserDetails loginUserVO = (CustomUserDetails)authentication.getPrincipal();
		CustomUserDetails loginUserInfo = new CustomUserDetails();
		
		loginUserInfo = usersService.getLoginUserInfo(loginUserVO.getUsername());
		
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
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomUserDetails loginUserVO = (CustomUserDetails)authentication.getPrincipal();
		CustomUserDetails loginUserInfo = new CustomUserDetails();
		
		loginUserInfo = usersService.getLoginUserInfo(loginUserVO.getUsername());
		
		UsersVO modifyPwd = new UsersVO();
		
		String password = pwencoder.encode(getPwd);
		modifyPwd.setEmail(loginUserInfo.getEmail());
		modifyPwd.setPassword(password);
		
		usersService.setModifyPwd(modifyPwd);

	}

	@RequestMapping(value="user/kakaologin")
	public String login(@RequestParam("code") String code, HttpSession session) throws Exception {
		
	    String access_Token = kakao.getAccessToken(code);
	    HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
	    System.out.println("login Controller : " + userInfo);
	    
	    String email = String.valueOf(userInfo.get("email"));
	    String name = String.valueOf(userInfo.get("nickname"));

	    int cnt = usersService.emailCheck(email);
	    
	    UsersVO user = new UsersVO();
    	user.setEmail(email);
    	user.setName(name);
    	user.setAuth("ROLE_MEMBER");
	    
    	if (cnt == 0) {
    		
    		usersService.userJoin(user);
    		
    		/*
    		 * session.setAttribute("userEmail", email); session.setAttribute("name", name);
    		 * session.setAttribute("access_Token", access_Token);
    		 * 
    		 * UserDetails userDetail = customService.loadUserByUsername(user.getEmail());
    		 * 
    		 * Authentication authentication = new
    		 * UsernamePasswordAuthenticationToken(userDetail, userDetail.getPassword(),
    		 * userDetail.getAuthorities());
    		 * 
    		 * SecurityContext securityContext = SecurityContextHolder.getContext();
    		 * securityContext.setAuthentication(authentication);
    		 * session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
    		 */
    		
    	}
    	
    	UserDetails userDetail =  customService.loadUserByUsername(user.getEmail());
    	
    	Authentication authentication = 
    			new UsernamePasswordAuthenticationToken(userDetail, userDetail.getPassword(), userDetail.getAuthorities());
    	
    	SecurityContext securityContext = SecurityContextHolder.getContext();
    	securityContext.setAuthentication(authentication);
    	session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
    	
	    //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	    if (userInfo.get("email") != null) {
	       
	    	session.setAttribute("userEmail", email);
	    	session.setAttribute("name", name);
	    	session.setAttribute("access_Token", access_Token);
	    	
	        
	    }
	    
	    
	    
	    
	    log.info("카카오세션?:" + session);
		log.info("contorller access_Token:" + access_Token );
		log.info("controller code : " + code);
	    
	    return "home";
	}
	
	
	@ResponseBody
	@PostMapping("/bye_user")
	public void byeUser(@RequestBody String getEmail) {
		System.out.println(getEmail);
		usersService.byeUser(getEmail);
		SecurityContextHolder.clearContext();
	}

}
