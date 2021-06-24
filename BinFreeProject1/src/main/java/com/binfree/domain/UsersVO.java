package com.binfree.domain;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class UsersVO {
	
	private int id;
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




	
}
