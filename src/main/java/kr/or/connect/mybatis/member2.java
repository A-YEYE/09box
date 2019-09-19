package kr.or.connect.mybatis;

import org.apache.ibatis.annotations.Param;

import kr.or.connect.dto.Member;

// DAO역할하는 interface
public interface member2 {
	int GetKey(String id, String emailCheck);	// 난수(유저 인증키) 생성메서드
	int alterUserKey(String id, String key);	// 유저 인증키 Y로 바꿔주는 메서드
	Member loginUser(@Param("id")String id);	// 로그인 
}
