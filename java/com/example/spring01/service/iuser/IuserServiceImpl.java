package com.example.spring01.service.iuser;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.ListUI;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.method.annotation.ViewMethodReturnValueHandler;

import com.example.spring01.model.iuser.dao.IuserDAO;
import com.example.spring01.model.iuser.dto.IuserDTO;

@Service
public class IuserServiceImpl implements IuserService {

	@Inject
	IuserDAO iuserDao;

	@Override
	public List<IuserDTO> listIuser() {
		// TODO Auto-generated method stub
		return iuserDao.listIuser();
	}

	@Override
	public void insertIuser(IuserDTO dto) {
		// TODO Auto-generated method stub
		iuserDao.insertIuser(dto);
	}

	@Override
	public void updateIuser(IuserDTO dto) {
		// TODO Auto-generated method stub
		iuserDao.updateIuser(dto);
	}

	@Override
	public IuserDTO modifyIuser(int u_no) {
		// TODO Auto-generated method stub
		return iuserDao.modifyIuser(u_no);
	}

	@Override
	public void deleteIuser(int u_no) {
		// TODO Auto-generated method stub
		iuserDao.deleteIuser(u_no);
	}


}
