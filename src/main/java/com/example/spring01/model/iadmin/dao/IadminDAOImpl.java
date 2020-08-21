package com.example.spring01.model.iadmin.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring01.model.iadmin.dto.IadminDTO;

@Repository
public class IadminDAOImpl implements IadminDAO {

	@Inject
	SqlSession sqlSession;

	@Override
	public String loginCheck(IadminDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("iadmin.loginCheck", dto);
	}

	@Override
	public IadminDTO viewIadmin(IadminDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("iadmin.viewIadmin", dto);
	}

}
