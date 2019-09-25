package kr.or.connect.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.or.connect.dto.Authority;
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
	public void insertMember(Member member) throws Exception  {
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
		System.out.println(" 암호화 전" + member);	// 암호화 전
		
		String pwd = scpwd.encode(member.getPwd());
		member.setPwd(pwd);
		System.out.println("암호화 후" + member);	// 암호화 후
		
		dao.insert(member);
	}

	@Override
	public int idcheck(String id) {
		return dao.idcheck(id);
	}

	@Override
	public void deleteMember(int id) {
		dao.deleteMember(id);
	}

	@Override
	public List<Member> selectAll() {
		return dao.selectAll();
	}

	@Override
	public void update(Member member) {
		dao.update2(member);
	}

	@Override
	public List<Authority> selectAllAuthority() {
		return dao.selectAllAuthority();
	}
}
