package com.binfree.persistance;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.binfree.domain.FormVO;
import com.binfree.mapper.FormMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class FormMapperTests {
	@Setter(onMethod_=@Autowired)
	private FormMapper fmapper;
	
//	@Test
//	public void testGetFInsert() {
//		
//		FormVO form = new FormVO();
//		form.setName("폼테스트");
//		form.setFormPassword("1111");
//		form.setPhone("010-9876-5432");
//		form.setZipCode("480-123");
//		form.setLoc("경기 양주");
//		form.setInputLoc("광적면 삼일로 247");
//		form.setServLoc("경기 양주");
//		form.setPic("폼테스트.jpg");
//		
//		fmapper.formInsert(form);
//	}
	
//	@Test
//	public void testGetFList() {
//		// 오른쪽의 form은 MySql의 테이블명
//		fmapper.getFormList().forEach(form -> log.info(form));
//	}
	
//	@Test
//	public void testFRead() {
//		//실행 전 존재하는 지?
//		FormVO form = fmapper.formRead(5L);
//		log.info(form);
//	}
	
//	@Test
//	public void testFDelete() {
//		// 실행 전 존재하는 지?
//		log.info("Delete Count: " + fmapper.formDelete(1L));
//		
//	}
	
//	@Test
//	public void testFUpdate() {
//		// 실행 전 존재하는 지?
//		FormVO form = new FormVO();
//		form.setId(2L);
//		form.setName("수정이름");
//		form.setPhone("010-1234-5678");
//		form.setZipCode("567-890");
//		form.setLoc("경기 남양주시");
//		form.setInputLoc("남양주 남양주");
//		form.setServLoc("경기 남양주시");
//		form.setPic("수정.jpg");
//		
//		int count = fmapper.formUpdate(form);
//		log.info("Update Count: " + count);
//	}
	
}
