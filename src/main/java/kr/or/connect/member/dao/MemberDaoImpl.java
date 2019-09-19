package kr.or.connect.member.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.connect.dto.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	private SqlSessionTemplate sqlSession;
	String ns = "kr.or.connect.mybatis.member2";
	
	@Override
	public Member selectOne(String id) {
		return sqlSession.selectOne(ns+".memberSelectOne", id);
	}

	@Override
	public void insert(Member member) {
		sqlSession.insert(ns+".memberInsert", member);
	}
	
	// id중복체크(사용은 안함..)
	@Override
	public int idcheck(String id) {
		return sqlSession.selectOne(ns+".idcheck", id);
	}
}
