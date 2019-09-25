package kr.or.connect.reply.dao;

import java.util.List;

import org.aspectj.lang.annotation.DeclareAnnotation;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.connect.dto.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String ns = "kr.or.connect.mybatis.reply";
	
	@Override
	public List<Reply> selectAll() {
		return sqlSession.selectList(ns+".selectAllReply");
	}
	
	@Override
	public List<Reply> list(int rnum) {
		return sqlSession.selectList(ns+".selectByReply", rnum);
	}
	
	@Override
	public void insertReply(Reply reply) {
		sqlSession.insert(ns+".insertReply", reply);
	}
	@Override
	public void updateReply(int replyCode) {
		sqlSession.update(ns+".updateReply", replyCode);
	}
}
