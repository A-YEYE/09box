package kr.or.connect.reply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.connect.dto.Reply;
import kr.or.connect.reply.dao.ReplyDao;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyDao dao;
	
	@Override
	public List<Reply> selectAll() {
		return dao.selectAll();
	}
	
	@Override
	public List<Reply> listReply(int rnum) {
		return dao.list(rnum);
	}

	@Override
	public void inserReply(Reply reply) {
		dao.insertReply(reply);
	}

	@Override
	public void updateReply(int replyCode) {
		dao.updateReply(replyCode);
	}
}
