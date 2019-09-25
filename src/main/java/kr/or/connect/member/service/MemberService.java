package kr.or.connect.member.service;

import java.util.List;

import kr.or.connect.dto.Authority;
import kr.or.connect.dto.Member;

public interface MemberService {
	Member selectOneMember(String id);
	void insertMember(Member member) throws Exception;
	int idcheck(String id);
	void deleteMember(int id);
	List<Member> selectAll();
	void update(Member member);
	List<Authority> selectAllAuthority();
}
