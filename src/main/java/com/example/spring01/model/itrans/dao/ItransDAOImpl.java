package com.example.spring01.model.itrans.dao;

import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring01.model.itrans.dto.ItransDTO;

//mapper랑 연결
@Repository
public class ItransDAOImpl implements ItransDAO {
	@Inject
	SqlSession sqlSession;

	@Override
	public List<ItransDTO> listItrans(int u_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("itrans.itrans_list", u_no);
	}

	@Override
	public void insertItrans(ItransDTO dto) {
		sqlSession.insert("itrans.itrans_insert", dto);
	}

	@Override
	public ItransDTO modifyItrans(int t_no) {
		return sqlSession.selectOne("itrans.itrans_modify", t_no);
	}

	@Override
	public void updateItrans(ItransDTO dto) {
		sqlSession.update("itrans.itrans_update", dto);
	}

	@Override
	public void deleteItrans(int t_no) {
		sqlSession.delete("itrans.itrans_delete", t_no);
	}

}
