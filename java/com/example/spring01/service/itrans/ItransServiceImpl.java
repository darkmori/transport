package com.example.spring01.service.itrans;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring01.model.itrans.dao.ItransDAO;
import com.example.spring01.model.itrans.dto.ItransDTO;

@Service
public class ItransServiceImpl implements ItransService {

	@Inject
	ItransDAO itransDao;

	@Override
	public List<ItransDTO> listItrans() {
		// TODO Auto-generated method stub
		return itransDao.listItrans();
	}

	@Override
	public void insertItrans(ItransDTO dto) {
		itransDao.insertItrans(dto);
	}

	@Override
	public void updateItrans(ItransDTO dto) {
		itransDao.updateItrans(dto);
	}

	@Override
	public ItransDTO modifyItrans(int t_no) {
		return itransDao.modifyItrans(t_no);
	}

	@Override
	public void deleteItrans(int t_no) {
		itransDao.deleteItrans(t_no);
	}
}
