package com.binfree.mapper;

import java.util.List;

import org.springframework.stereotype.Service;

import com.binfree.domain.FormVO;
import com.binfree.service.FormService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class FormServiceImpl implements FormService{
	
	private FormMapper fmapper;

	@Override
	public void register(FormVO form) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FormVO get(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modify(FormVO form) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean remove(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<FormVO> getFormList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
