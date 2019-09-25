package kr.or.connect.reply.dao;

import java.util.List;

import kr.or.connect.dto.Reply;

public interface ReplyDao {
	List<Reply> selectAll();
	List<Reply> list(int rnum);
	void insertReply(Reply reply);
	void updateReply(int replyCode);	
}
