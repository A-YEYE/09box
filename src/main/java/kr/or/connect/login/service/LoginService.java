package kr.or.connect.login.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.or.connect.dto.Member;
import kr.or.connect.mybatis.member2;

@Service
public class LoginService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	private member2 member2;
	
	public int loginService(Member member, HttpSession httpSession, String user_check,
			HttpServletResponse response) {
		System.out.println("로그인 객체 확인 member : " + member);
		Member vo = null;
		String user_id = null;
		String user_pw = null;
		if(member != null) {
			user_id = member.getId();
			user_pw = member.getPwd();
			member2 = sqlSession.getMapper(member2.class);	// 입력받은 id와 같은 id를 db에서 서치
			vo = member2.loginUser(user_id);	// id를 입력하여 나온 값.(실제 값)
		}
		
		System.out.println("db 객체 확인 vo : " + vo);

		// 로그인 결과값
		int result = 0;

		// 회원 정보가 없을 시
		if (vo == null) {
			result = 0;
			return result;
		}

		// 인증 안 했을 경우 인증하란 메세지 발생
		String y = "Y";
		if (!(vo.getEmailCheck().equals(y))) {
			System.out.println("vo.getEmailCheck().equals(y)" + vo.getEmailCheck().equals(y) );
			result = -2;
			return result;
		}

		// 입력한 아이디와 스토어id값을 통해 정보가 존재 할 경우
		if (vo != null) {
			// 아이디,비번,스토어id가 모두 같은경우
			System.out.println("1단계");
			String voPwd = vo.getPwd();
			if (vo.getId().equals(user_id) && passwordEncoder.matches(user_pw, voPwd)) {
				System.out.println("2단계");
				// 쿠키 체크 검사
				Cookie cookie = new Cookie("user_check", user_id);
				if (user_check.equals("true")) {
					response.addCookie(cookie);
					System.out.println("3단계-쿠키 아이디저장 O");
					// 쿠키 확인
					// System.out.println("Service check" + cookie);
				} else {
					System.out.println("3단계-쿠키 아이디저장 X");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}

				System.out.println("3단계-로그인단계");
				// 세션 저장하기 전에 비밀번호 가리기
				vo.setPwd("");

				// 세션에 vo 객체 저장
				httpSession.setAttribute("userSession", vo);
				System.out.println("회원아이디 세션 userSession : " + httpSession.getAttribute("userSession"));

				result = 1;

				// 중복로그인 start
				
				// 접속자 아이디를 세션에 담는다.
				httpSession.setAttribute("loginId", member.getId());
			}
		}

		return result;
	}
}