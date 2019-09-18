package kr.or.connect.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.connect.dto.Member;
import kr.or.connect.login.service.LoginService;
import kr.or.connect.mail.service.MailSendService;
import kr.or.connect.member.service.MemberService;


/* @Controller 어노테이션은 현재 클래스를 SpringWebMVC가 관리하는 컨트롤러로 등록할 때 사용 */
@Controller
public class LoginController {
	@Autowired
	MemberService memberService;
	@Autowired
	MailSendService mailSendService;
	@Autowired
	LoginService loginService; 
	
	// 회원가입 페이지 요청
	@GetMapping(path="/join")
	public String join() {
		
		return "join";
	}
	
	@PostMapping(path="/join")
	public String joinFin(Member member, HttpServletRequest request) {
		System.out.println(member);
		member.setAuthority(9);
		
		try {
			memberService.insertMember(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mailSendService.mailSendWithUserKey(member.getEmail(), member.getId(), request);
		
		return "loginform";
	}
	
	// id 중복체크
	@RequestMapping("/idcheck.do")
    @ResponseBody
    public Map<Object, Object> idcheck(@RequestBody String userid) {
        
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        count = memberService.idcheck(userid);
        map.put("cnt", count);
 
        return map;
    }
	
	@RequestMapping(value = "/loginform", method = { RequestMethod.GET})
	public String loginform() {
		return "loginform";
	}

	// 로그인실패 페이지 요청
	@RequestMapping(value = "/loginfail", method = RequestMethod.GET)
	public String loginfail() {

		/* View 정보를 반환하는 부분 */
		return "loginfail"; // "/WEB-INF/views/loginfail.jsp"
	}

	// 로그아웃폼 페이지 요청
	@RequestMapping(value = "/logoutform", method = RequestMethod.GET)
	public String logoutform() {

		/* View 정보를 반환하는 부분 */
		return "logoutform"; // "/WEB-INF/views/logoutform.jsp"
	}

	// 계정별 로그인
	@RequestMapping(value = "/loginsuccess", method = RequestMethod.GET)
	public String loginresult() {

		return "loginsuccess";// "/WEB-INF/views/loginsuccess.jsp"
	}
	
	@RequestMapping(value = "/loginsuccess", method = RequestMethod.POST)
	public String loginresultPost() {

		return "loginsuccess";// "/WEB-INF/views/loginsuccess.jsp"
	}
	
	
	@PostMapping(path="/loginform")
	@ResponseBody
	public int userLoingPass(Member userVO, HttpSession httpSession, HttpServletRequest request,
			HttpServletResponse response, Model model) {

		// userLogin.jsp에서 아이디기억하기 name값(remember) 가져오기
		String user_check = request.getParameter("remember_userId");
//		System.out.println("아이디기억하기" +user_check);
		
		String user_id = request.getParameter("user_id");	// form에 입력한 id
		userVO = memberService.selectOneMember(user_id);	// db에 있는 member
		System.out.println(userVO.getPwd());
//여기서부터
//		String user_pw = request.getParameter("user_pw");	// 입력된 pw
//		userVO.setPwd(user_pw);
//		System.out.println("비번" + user_pw);
//		
//		// 로그인 메서드
//		int result = loginService.loginService(userVO, httpSession, user_check, response);
//
//		return result;
		
		if(userVO == null) {
			// 로그인 메서드
			int result = loginService.loginService(userVO, httpSession, user_check, response);
//			System.out.println(result);
			return result;
		}else {
			// 비밀번호 암호화
	//		String user_pw = userVO.getPwd();
			String user_pw = request.getParameter("user_pw");
			System.out.println("비번" + user_pw);
//			BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
//			userVO.setPwd(scpwd.encode(user_pw));
			userVO.setPwd(user_pw);
			
//			// 암호화 확인
//			System.out.println("user_pw : " + userVO.getPwd());
			// 로그인 메서드
			int result = loginService.loginService(userVO, httpSession, user_check, response);

			return result;
		}
	}
	// 인증메일 누르면 이동하는 controller
	@RequestMapping(value = "/user/key_alter", method = RequestMethod.GET)
	public String key_alterConfirm(@RequestParam("user_id") String user_id, @RequestParam("user_key") String key) {

		mailSendService.alter_userKey_service(user_id, key); // mailsender의 경우 @Autowired

		return "joinSuccess";
	}
}
