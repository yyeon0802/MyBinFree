package com.binfree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
public class LoginController {
	
//	@GetMapping("/login")
//	public String login() {
//		return "user/login";
//	}
//	
//	@GetMapping("/register")
//	public String registration() {
//		return "user/register";
//	}
}
