package kr.or.connect.member.dao;

import kr.or.connect.dto.Member;

public interface MemberDao {
	Member selectOne(String id);
	void insert(Member meber);
	int idcheck(String id);
	
}
