package com.test.mypet.member;

import org.springframework.beans.factory.annotation.Autowired;

public class MemberService {
	
	@Autowired
	IMemberDAO imemberDAO;

	// 로그인(유저)
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
		return imemberDAO.memberLogin(memberDTO);
	}
	
	// 로그인(관리자)
	public AdminDTO adminLogin(AdminDTO adminDTO) throws Exception {
		return imemberDAO.adminLogin(adminDTO);
	}
	
}
