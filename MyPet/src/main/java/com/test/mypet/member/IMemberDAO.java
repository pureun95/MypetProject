package com.test.mypet.member;

import org.springframework.stereotype.Repository;

@Repository
public interface IMemberDAO {
	
	// 로그인(유저)
	public MemberDTO memberLogin(MemberDTO dto);
	
	// 로그인(관리자)
	public AdminDTO adminLogin(AdminDTO dto_admin);

	
}
