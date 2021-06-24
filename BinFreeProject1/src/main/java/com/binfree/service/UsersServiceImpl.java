package com.binfree.service;

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
import com.binfree.domain.AuthVO;
import com.binfree.domain.UsersVO;
import com.binfree.mapper.UsersMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class UsersServiceImpl implements UsersService {

//	@Setter(onMethod_=@Autowired)
//	private UsersMapper mapper;

//	@Override
//	public void register(UsersVO user) {
//		log.info("register....."+user);
//		return;

//	@Setter(onMethod_=@Autowired)

	@Autowired
	UsersMapper usersMapper;
	
	
	HttpSession session;
	//HttpServletRequest servletRequest = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	
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
		
		UsersVO user = new UsersVO();
		user = usersMapper.getLoginUserInfo(email);		
		System.out.println("usersServiceImple에서 userMapper 호출  : " + user);
		
		/*
		 * session.setAttribute("email", user.getEmail()); System.out.println("셋 세션");
		 * 
		 * session.setAttribute("password", user.getPassword());
		 * session.setAttribute("name", user.getName()); session.setAttribute("phone",
		 * user.getPhone()); session.setAttribute("zipCode", user.getZipCode());
		 * session.setAttribute("loc", user.getLoc()); session.setAttribute("inputLoc",
		 * user.getInputLoc());
		 */
		
		return user;
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
