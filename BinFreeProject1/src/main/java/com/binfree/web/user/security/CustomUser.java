package com.binfree.web.user.security;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.binfree.web.user.domain.UsersVO;

import lombok.Getter;

@Getter
public class CustomUser extends User {
	
	private static final long serialVersionUID = 1L;
	
	private UsersVO user;
	
	public CustomUser(String email, String password, Collection<? extends GrantedAuthority> authorities) {
		super(email, password, authorities);
	}
	
	public CustomUser(UsersVO vo) {
		super(vo.getEmail(), vo.getPassword(), vo.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuth())).
				collect(Collectors.toList()));
		
		this.user = vo;
	}
}
