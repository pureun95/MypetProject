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

//	public MemberDTO memberLogin(MemberDTO memberDTO) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	public class MemberDAO implements IMemberDAO {

//	@Override
//	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}


	
//	@Override
//	public MemberDTO login(MemberDTO dto) throws Exception {
//
//		return sql.selectOne("memberMapper.login", dto);
//	}
	
//	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception;

	
	
	
	
	
}
