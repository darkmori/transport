package com.example.spring01.service.iuser;

import java.util.List;

import com.example.spring01.model.itrans.dto.ItransDTO;
import com.example.spring01.model.iuser.dto.IuserDTO;

public interface IuserService {

	public List<IuserDTO> listIuser();

	public void insertIuser(IuserDTO dto);

	public void updateIuser(IuserDTO dto);

	public IuserDTO modifyIuser(int u_no);

	public void deleteIuser(int u_no);

	public List<ItransDTO> detailIuser(int u_no);

//	public Integer loginCheck(int u_no);
	
	public IuserDTO loginCheck(IuserDTO dto);

	public IuserDTO viewIuser(IuserDTO dto);

	public void checkIuser(int t_no);
}
