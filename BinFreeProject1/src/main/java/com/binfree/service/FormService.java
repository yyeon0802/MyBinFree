package com.binfree.service;

import java.util.List;

import com.binfree.domain.FormVO;

public interface FormService {
	public void register(FormVO form);
	
	public FormVO get(long id);
	
	public boolean modify(FormVO form);
	
	public boolean remove(Long id);
	
	public List<FormVO> getFormList();
}
