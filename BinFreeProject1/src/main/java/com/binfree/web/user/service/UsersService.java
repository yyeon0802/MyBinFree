package com.binfree.web.user.service;

import javax.servlet.http.HttpSession;

import com.binfree.web.user.domain.UsersVO;

public interface UsersService {
   
//   public void userLogIn(UsersVO tempLoginUserVO);
	
//	public void register(UsersVO user);
	
	// 회원가입
	public void userJoin(UsersVO user) throws Exception;
	
	public void insertUserAuth(UsersVO user) throws Exception;
	
	public UsersVO getEmail(UsersVO user);
	
	public UsersVO getLoginUserInfo(String email);
	
	public void setModifyUserInfo(UsersVO modifyUserInfo);

	public void setModifyPwd(UsersVO modifyPwd);
	
	public void setModifySubInfo(UsersVO modifySubInfo);
	
	public void byeUser(String email);
	
}
