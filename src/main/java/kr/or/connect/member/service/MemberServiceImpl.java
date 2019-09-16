package kr.or.connect.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.connect.dto.Member;
import kr.or.connect.member.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;
	
	@Override
	public Member selectOneMember(String id) {
		return dao.selectOne(id);
	}

	@Override
	public void insertMember(Member member) {
		dao.insert(member);
	}

}
