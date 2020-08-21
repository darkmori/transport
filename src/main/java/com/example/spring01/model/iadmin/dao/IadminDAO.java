package com.example.spring01.model.iadmin.dao;

import com.example.spring01.model.iadmin.dto.IadminDTO;

public interface IadminDAO {

	public String loginCheck(IadminDTO dto);

	public IadminDTO viewIadmin(IadminDTO dto);

}
