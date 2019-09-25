package kr.or.connect.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.or.connect.dto.Member;

public class MemberInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		// handler 종류 확인(controller에 있는 메서드가 handlerMethod 타입인지 체크
		if(handler instanceof HandlerMethod == false) {
			return true;
		}
		
		// 형 변환
		HandlerMethod handlerMethod = (HandlerMethod)handler;
		
		// @Auth 받아오기
		Auth auth = handlerMethod.getMethodAnnotation(Auth.class);	// 일반 계정용
		Auth adminRole = handlerMethod.getMethod().getDeclaringClass().getAnnotation(Auth.class);	// admin전용
		
		// method에 @Auth가 없는 경우(인증이 필요없는 요청)
		if(auth == null) {
			return true;
		}
		
		// @Auth가 있는 경우 세션이 있는지 확인
		HttpSession session = request.getSession();
		if(session == null) {
			response.sendRedirect(request.getContextPath()+"/loginfail");
			return false;
		}
		
		// 세션이 존재하면 유효한 유저인지 확인
		if(request.getSession().getAttribute("userSession")==null){
			response.sendRedirect(request.getContextPath()+"/loginfail");
			return false;
		}
		
		// admin일 경우
		Member member = (Member) request.getSession().getAttribute("userSession");
		System.out.println("member: " + member);
		System.out.println("adminRole: " + adminRole);
		if(adminRole != null) {
			String role = auth.role().toString();
			System.out.println("role: " + role);
			// 서비스의 id가 admin이면 admin.
			if("ADMIN".equals(role)) {
				if( "ADMIN".equals(member.getAuthority()) == false ){
					response.sendRedirect(request.getContextPath());
					return false;
				}
			}
		}
		return true;
	}
}
