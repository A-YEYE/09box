package kr.or.connect.mail.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

public interface MailSendService {
	String init();
	String getKey(boolean lowerCheck, int size);
	void mailSendWithUserKey(String e_mail, String user_id, HttpServletRequest request);
	int alter_userKey_service(String user_id, String key);
}
