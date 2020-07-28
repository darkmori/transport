package com.example.spring01.service.iuser;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import com.example.spring01.model.iuser.dao.IuserDAO;
import com.example.spring01.model.iuser.dto.IuserDTO;

@Service
public class IuserServiceImpl implements IuserService {

	@Inject
	IuserDAO iuserDao;

	@Override
	public List<IuserDTO> listIuser() {
		return iuserDao.listIuser();
	}

	@Override
	public void insertIuser(IuserDTO dto) {
		iuserDao.insertIuser(dto);
	}

	@Override
	public void updateIuser(IuserDTO dto) {
		iuserDao.updateIuser(dto);
	}

	@Override
	public IuserDTO modifyIuser(int u_no) {
		return iuserDao.modifyIuser(u_no);
	}

	@Override
	public void deleteIuser(int u_no) {
		iuserDao.deleteIuser(u_no);
	}

	@Override
	public String loginCheck(IuserDTO dto) {
		return iuserDao.loginCheck(dto);
	}

	@Override
	public IuserDTO viewIuser(IuserDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

}
