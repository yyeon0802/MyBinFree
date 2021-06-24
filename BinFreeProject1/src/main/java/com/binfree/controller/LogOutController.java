package com.binfree.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

public class LogOutController {
	@Controller
	public class LogoutController {

		@RequestMapping("/logout.do")
		public String logout(HttpSession session) {
			session.invalidate();
			return "login.jsp";
		}
	}
}
