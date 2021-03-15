package com.test.mypet.member;

import org.springframework.stereotype.Repository;

@Repository
public interface IMemberDAO {
	
	// 로그인
	public MemberDTO memberLogin(MemberDTO dto);

	
}
