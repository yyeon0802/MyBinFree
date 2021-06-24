package com.binfree.service;

import javax.servlet.http.HttpSession;

import com.binfree.domain.UsersVO;

public interface UsersService {
   
//   public void userLogIn(UsersVO tempLoginUserVO);
	
//	public void register(UsersVO user);
	
	// 회원가입
	public void userJoin(UsersVO user) throws Exception;
	
	public void insertUserAuth(UsersVO user) throws Exception;
	
	public UsersVO getLoginUserInfo(String email);
	
}
