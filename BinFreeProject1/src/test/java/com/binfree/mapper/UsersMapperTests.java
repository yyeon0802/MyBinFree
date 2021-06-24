package com.binfree.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.binfree.domain.UsersVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class UsersMapperTests {
	@Setter(onMethod_= @Autowired)
	private UsersMapper usermapper;	//usermapper.java 인터페이스 의존성 주입
	
	// 회원가입 쿼리 테스트 메서드
	@Test
	public void userJoin() throws Exception{
		UsersVO user = new UsersVO();
		user.setId(1);
		user.setEmail("test");
		user.setPassword("test");
		user.setName("test");
		user.setPhone("test");
		user.setZipCode("test");
		user.setLoc("test");
		user.setInputLoc("test");
		
		usermapper.userJoin(user);
	}
	
//	@Test
//	public void testRead() {
//		UsersVO vo = usermapper.read("admin90");
//		log.info(vo);
//		vo.getAuthList().forEach(authVO -> log.info(authVO));
//	}
}
