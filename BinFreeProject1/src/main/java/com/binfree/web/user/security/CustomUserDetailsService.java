package com.binfree.web.user.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.binfree.web.user.domain.UsersVO;
import com.binfree.web.user.mapper.UsersMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j

public class CustomUserDetailsService implements UserDetailsService {
	@Setter(onMethod_= {@Autowired})
	private UsersMapper usersMapper;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws
	UsernameNotFoundException{
		
		UsersVO user = new UsersVO();
		log.warn("Load User By UserName : "+ user.getEmail() );
		
		// userName means userid
		UsersVO vo = usersMapper.read(email);
		log.warn("queried by users mapper: " + vo);
		return vo==null? null : new CustomUser(vo);
	}
}
