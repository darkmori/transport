package com.example.spring01.service.itrans;

import java.util.List;

import com.example.spring01.model.itrans.dto.ItransDTO;

public interface ItransService {

	public List<ItransDTO> listItrans();

	public void insertItrans(ItransDTO dto);
	
	public ItransDTO modifyItrans(int t_no);
	
	public void updateItrans(ItransDTO dto);
	
	public void deleteItrans(int t_no);
}
