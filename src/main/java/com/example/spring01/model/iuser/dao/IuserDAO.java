package com.example.spring01.model.iuser.dao;

import java.util.List;

import com.example.spring01.model.iuser.dto.IuserDTO;

public interface IuserDAO {

	public List<IuserDTO> listIuser();

	public void insertIuser(IuserDTO dto);

	public void updateIuser(IuserDTO dto);

	public IuserDTO modify(int u_no);

	public void deleteIuser(int u_no);
}
