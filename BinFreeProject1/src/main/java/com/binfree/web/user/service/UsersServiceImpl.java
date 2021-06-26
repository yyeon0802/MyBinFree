package com.binfree.web.user.service;

import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;

import com.binfree.web.user.domain.AuthVO;
import com.binfree.web.user.domain.UsersVO;
import com.binfree.web.user.mapper.UsersMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
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
	public UsersVO getLoginUserInfo(String email) {
		
		System.out.println("usersServiceImple 진입 : " + email);
		
		UsersVO loginUserInfo = new UsersVO();
		loginUserInfo = usersMapper.getLoginUserInfo(email);
		System.out.println("usersServiceImple에서 userMapper 호출  : " + loginUserInfo);
		
		/*
		 * session.setAttribute("email", user.getEmail()); System.out.println("셋 세션");
		 * 
		 * session.setAttribute("password", user.getPassword());
		 * session.setAttribute("name", user.getName()); session.setAttribute("phone",
		 * user.getPhone()); session.setAttribute("zipCode", user.getZipCode());
		 * session.setAttribute("loc", user.getLoc()); session.setAttribute("inputLoc",
		 * user.getInputLoc());
		 */
		
		return loginUserInfo;
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


}
