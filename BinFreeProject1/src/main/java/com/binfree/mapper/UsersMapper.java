package com.binfree.mapper;

import java.util.List;

import com.binfree.domain.UsersVO;

public interface UsersMapper {

	public UsersVO read(String email);
	
	//회원가입
	public void userJoin(UsersVO user);
//	public List<UsersVO> user();
//	public void insert(UsersVO user);

	public void insertUserAuth(UsersVO user) ;
	
	public UsersVO getLoginUserInfo(String email);
	
	public void setModifyUserInfo(UsersVO modifyUserInfo);
	
	public void setModifySubInfo(UsersVO modifySubInfo);

	public void setModifyPwd(String getPwd);
	
	public void byeUser(String email);
	
}
