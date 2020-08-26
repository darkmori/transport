package com.example.spring01.service.itrans;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.example.spring01.model.itrans.dao.ItransDAO;
import com.example.spring01.model.itrans.dto.ItransDTO;
import com.example.spring01.model.iuser.dto.IuserDTO;

@Service
public class ItransServiceImpl implements ItransService {

	@Inject
	ItransDAO itransDao;

	@Override
	public List<ItransDTO> listItrans(int u_no) {
		return itransDao.listItrans(u_no);
	}

	@Override
	public IuserDTO writeItrans(int u_no) {
		// TODO Auto-generated method stub
		return itransDao.writeItrans(u_no);
	}

	@Override
	public void insertItrans(ItransDTO dto) {
		itransDao.insertItrans(dto);
	}

	@Override
	public ItransDTO modifyItrans(int t_no) {
		return itransDao.modifyItrans(t_no);
	}

	@Override
	public void updateItrans(ItransDTO dto) {
		itransDao.updateItrans(dto);
	}

	@Override
	public void deleteItrans(int t_no) {
		itransDao.deleteItrans(t_no);
	}
}
