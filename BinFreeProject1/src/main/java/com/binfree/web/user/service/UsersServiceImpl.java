package com.binfree.web.user.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.binfree.web.user.domain.UsersVO;
import com.binfree.web.user.mapper.UsersMapper;
import com.binfree.web.user.security.CustomUserDetails;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
//@AllArgsConstructor
public class UsersServiceImpl implements UsersService {


	@Autowired
	private UsersMapper usersMapper;
	
	
	
	@Override
	public void userJoin(UsersVO user) throws Exception {
		usersMapper.userJoin(user);
	}

	@Override
	public void insertUserAuth(UsersVO user) throws Exception {
		usersMapper.insertUserAuth(user);
	}

	@Override
	public UsersVO getEmail(UsersVO user) {
		return usersMapper.getEmail(user);
	}
	
	@Override
	public CustomUserDetails getLoginUserInfo(String email) {
		
		System.out.println("usersServiceImple 진입 : " + email);
		
		CustomUserDetails user = new CustomUserDetails();
		user = usersMapper.getLoginUserInfo(email);
		System.out.println("usersServiceImple에서 userMapper 호출  : " + user.getName());
		
		return user;
	}
	

	@Override
	public void setModifyUserInfo(UsersVO modifyUserInfo) {

		usersMapper.setModifyUserInfo(modifyUserInfo);
	}

	@Override
	public void setModifyPwd(UsersVO modifyPwd) {
		usersMapper.setModifyPwd(modifyPwd);
	}

	@Override
	public void setModifySubInfo(UsersVO modifySubInfo) {

		usersMapper.setModifySubInfo(modifySubInfo);
	}

	@Override
	public void byeUser(String email) {

		usersMapper.byeUser(email);
	}

	@Override
	public int emailCheck(String email) {
		return usersMapper.emailCheck(email);
	}

	
	
	

}
