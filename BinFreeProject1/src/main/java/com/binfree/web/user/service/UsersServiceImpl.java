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

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class UsersServiceImpl implements UsersService {


	@Autowired
	private UsersMapper usersMapper;
	
	/*
	 * @Resource(name = "loginUserVO")
	 * 
	 * @Lazy private UsersVO loginUserVO;
	 */
	
	@Override
	public void userJoin(UsersVO user) throws Exception {
		usersMapper.userJoin(user);
	}

	@Override
	public void insertUserAuth(UsersVO user) throws Exception {
		usersMapper.insertUserAuth(user);
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

	
	

	
	/*
	 * @Override public void getLoginUserInfo(String email, HttpSession session) {
	 * 
	 * UsersVO user = new UsersVO();
	 * 
	 * user = usersMapper.getLoginUserInfo(email);
	 * 
	 * System.out.println(user);
	 * 
	 * session.setAttribute("email", user.getEmail());
	 * 
	 * 
	 * 
	 * private int id;
	private String email;
	private String password;
	private String name;
	private String phone;
	private String zipCode;
	private String loc;
	private String inputLoc;
	private Date subStart;
	private Date subEnd;
	private String check;
	private boolean enabled;
	private List<AuthVO> authList;
	 * 
	 * }
	 */
	
	

}
