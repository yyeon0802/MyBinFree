package com.binfree.web.user.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.binfree.web.user.domain.UsersVO;
import com.binfree.web.user.service.UsersService;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {
	@Autowired
	UsersService usersService;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth) throws IOException, ServletException {
		log.warn("Login Success");
		
		List<String> roleNames = new ArrayList<>();
		
		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		
		log.warn("ROLE NAMES: " + roleNames);
		
		if (roleNames.contains("ROLE_ADMIN")) {

			UserDetails loginUserVO = (UserDetails)auth.getPrincipal();
			String email = loginUserVO.getUsername();
			
			UsersVO loginUserInfo = new UsersVO();
			loginUserInfo = usersService.getLoginUserInfo(email);
			
			HttpSession session = request.getSession(true);
			
			session.setAttribute("loginUserInfo", loginUserInfo);
			
			response.sendRedirect("/");
			return;
		}
		
		if (roleNames.contains("ROLE_MEMBER")) {
			UserDetails loginUserVO = (UserDetails)auth.getPrincipal();
			String email = loginUserVO.getUsername();
			
			UsersVO loginUserInfo = new UsersVO();
			loginUserInfo = usersService.getLoginUserInfo(email);
			HttpSession session = request.getSession(true);
			session.setAttribute("loginUserInfo", loginUserInfo);
			System.out.println(request.getParameter("email"));
			//usersService.getLoginUserInfo(request.getParameter("email"));
			response.sendRedirect("/");
			return;
		}
		
		response.sendRedirect("/");
	}
}