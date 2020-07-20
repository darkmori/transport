package com.example.spring01.model.iuser.dao;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring01.model.iuser.dto.IuserDTO;

@Repository
public class IuserDAOImpl implements IuserDAO {

	@Inject
	SqlSession sqlSession;

	@Override
	public List<IuserDTO> listIuser() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("iuser.iuser_list");
	}

	@Override
	public void insertIuser(IuserDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.insert("iuser.iuser_insert", dto);
	}

	@Override
	public void updateIuser(IuserDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.update("iuser.iuser_update", dto);
	}

	@Override
	public IuserDTO modifyIuser(int u_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("iuser.iuser_modify", u_no);
	}

	@Override
	public void deleteIuser(int u_no) {
		// TODO Auto-generated method stub
		sqlSession.delete("iuser.iuser_delete", u_no);
	}

	@Override
	public String loginCheck(IuserDTO dto) {
		return sqlSession.selectOne("iuser.loginCheck", dto);
	}

	@Override
	public IuserDTO viewIuser(IuserDTO dto) { // TODO Auto-generated
		return sqlSession.selectOne("iuser.viewIuser", dto);
	}


}
