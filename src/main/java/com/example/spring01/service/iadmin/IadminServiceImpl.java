package com.example.spring01.service.iadmin;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring01.model.iadmin.dao.IadminDAO;
import com.example.spring01.model.iadmin.dto.IadminDTO;

@Service
public class IadminServiceImpl implements IadminService {
	
	@Inject
	IadminDAO iadminDao;

	@Override
	public String loginCheck(IadminDTO dto) {
		// TODO Auto-generated method stub
		return iadminDao.loginCheck(dto);
	}

	@Override
	public IadminDTO viewIadmin(IadminDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

}
