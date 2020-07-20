package com.example.spring01.service.iuser;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.spring01.model.iuser.dto.IuserDTO;

public interface IuserService {

	public List<IuserDTO> listIuser();

	public void insertIuser(IuserDTO dto);

	public void updateIuser(IuserDTO dto);

	public IuserDTO modifyIuser(int u_no);

	public void deleteIuser(int u_no);

	/*
	 * public String loginCheck(IuserDTO dto);
	 * 
	 * public IuserDTO viewIuser(IuserDTO dto);
	 * 
	 * public void logout(HttpSession session);
	 */
}
