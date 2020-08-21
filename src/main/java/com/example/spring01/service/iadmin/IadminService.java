package com.example.spring01.service.iadmin;

import com.example.spring01.model.iadmin.dto.IadminDTO;

public interface IadminService {
	
	public String loginCheck(IadminDTO dto);

	public IadminDTO viewIadmin(IadminDTO dto);
}
