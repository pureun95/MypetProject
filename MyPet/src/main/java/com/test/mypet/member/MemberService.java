package com.test.mypet.member;

import org.springframework.beans.factory.annotation.Autowired;

public class MemberService {
	
	@Autowired
	IMemberDAO imemberDAO;

	// 로그인
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
		return imemberDAO.memberLogin(memberDTO);
	}
	
}
