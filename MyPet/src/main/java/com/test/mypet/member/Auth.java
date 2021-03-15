package com.test.mypet.member;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



//보조 업무
@Aspect
@Component
public class Auth {
	
	@Autowired
	private IMemberDAO dao;
	
	@Pointcut("execution(public * com.test.mypet.member.MemberController.member_*(..))")
	// 매개변수는 와일드카드 ..으로 대체
	public void pc1() {

	}
	
}
