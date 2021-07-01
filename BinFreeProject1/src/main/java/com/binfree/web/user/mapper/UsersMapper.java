package com.binfree.web.user.mapper;

import org.springframework.stereotype.Repository;

import com.binfree.web.user.domain.UsersVO;
import com.binfree.web.user.security.CustomUserDetails;

@Repository
public interface UsersMapper {

	public UsersVO read(String email);
	//회원가입
	public void userJoin(UsersVO user);

	public void insertUserAuth(UsersVO user) ;
	
	public UsersVO getEmail(UsersVO user);
	
	public CustomUserDetails getLoginUserInfo(String email);
	
	public void setModifyUserInfo(UsersVO modifyUserInfo);
	
	public void setModifySubInfo(UsersVO modifySubInfo);

	public void setModifyPwd(UsersVO modifyPwd);
	
	public void byeUser(String email);
	
	public int emailCheck(String email);
}
