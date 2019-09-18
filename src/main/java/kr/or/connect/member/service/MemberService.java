package kr.or.connect.member.service;

import org.springframework.stereotype.Service;

import kr.or.connect.dto.Member;

public interface MemberService {
	Member selectOneMember(String id);
	void insertMember(Member member) throws Exception;
	int idcheck(String id);
}
