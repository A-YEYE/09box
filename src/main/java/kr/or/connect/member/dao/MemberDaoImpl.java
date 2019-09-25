package kr.or.connect.member.dao;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

import kr.or.connect.dto.Authority;
import kr.or.connect.dto.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	private SqlSessionTemplate sqlSession;
	String ns = "kr.or.connect.mybatis.member2";
	String au = "kr.or.connect.mybatis.Authority";
	
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

	@Override
	public void deleteMember(int id) {
		sqlSession.delete(ns+".deleteMember", id);
	}

	@Override
	public List<Member> selectAll() {
		List<Member> list = sqlSession.selectList(ns+".selectAllMember");
		return list;
	}
	
	@Override
	public Member update1(int id) {
		sqlSession.update(ns+"", id);
		return null;
	}
	
	@Override
	public void update2(Member member) {
		sqlSession.update(ns+".updateMember", member);
	}

	@Override
	public List<Authority> selectAllAuthority() {
		return sqlSession.selectList(au+".SelectAllAuthority");
	}
}
