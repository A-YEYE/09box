package kr.or.connect.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.connect.dto.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	private SqlSessionTemplate sqlSession;
	String ns = "kr.or.connect.mybatis.member";
	
	@Override
	public Member selectOne(String id) {
		return sqlSession.selectOne(ns+".memberSelectOne", id);
	}

	@Override
	public void insert(Member member) {
		sqlSession.insert(ns+".memberInsert", member);
	}

}
