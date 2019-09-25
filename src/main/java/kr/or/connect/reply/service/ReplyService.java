package kr.or.connect.reply.service;

import java.util.List;

import kr.or.connect.dto.Reply;

public interface ReplyService {
	List<Reply> selectAll();
	List<Reply> listReply(int rnum);
	void inserReply(Reply reply);
	void updateReply(int replyCode);
}
