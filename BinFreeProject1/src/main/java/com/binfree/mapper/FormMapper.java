package com.binfree.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.binfree.domain.FormVO;

public interface FormMapper {
	
	// @Select("select * from form where id > 0;")
	public List<FormVO> getFormList();
	
	public void formInsert(FormVO form);
	
	// public void formInsertSelectKey(FormVO form);
	
	public FormVO formRead(Long id);
	
	public int formDelete(Long id);
	
	public int formUpdate(FormVO form);
}
