package kr.or.connect.member.dao;

import java.util.List;

import kr.or.connect.dto.Authority;
import kr.or.connect.dto.Member;

public interface MemberDao {
	Member selectOne(String id);
	void insert(Member meber);
	int idcheck(String id);
	void deleteMember(int id);
	List<Member> selectAll();
	Member update1(int id);
	void update2(Member member);
	List<Authority> selectAllAuthority();
}
