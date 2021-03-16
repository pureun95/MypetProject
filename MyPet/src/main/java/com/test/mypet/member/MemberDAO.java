package com.test.mypet.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class MemberDAO implements IMemberDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public MemberDTO memberLogin(MemberDTO dto) {
		// TODO Auto-generated method stub
		return template.selectOne("member.login", dto);
	}

	@Override
	public AdminDTO adminLogin(AdminDTO dto_admin) {

//		return template.selectOne("member.login_admin", dto_admin);
		return template.selectOne("member.login_admin", dto_admin);
		
	}

	
}
