package com.example.spring01.model.itrans.dao;

import java.util.List;

import com.example.spring01.model.itrans.dto.ItransDTO;

public interface ItransDAO {

	public List<ItransDTO> listItrans();

	public void insertItrans(ItransDTO dto);

	public ItransDTO modifyItrans(int t_no);
	
	public void updateItrans(ItransDTO dto);

	public void deleteItrans(int t_no);
	

}
