package hongma.bbs.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hongma.bbs.service.exVO;

@Repository
public class exDAO {

	@Autowired
	private SqlSession sqlSession;
	private String ns = "ex.";
	
	
	
	public List<exVO> selectEx() throws Exception{
		return sqlSession.selectList(ns+"selectEx");
	}
}
