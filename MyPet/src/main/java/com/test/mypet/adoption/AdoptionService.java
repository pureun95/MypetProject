package com.test.mypet.adoption;

import org.springframework.beans.factory.annotation.Autowired;


public class AdoptionService implements IAdoptionService {
	
	@Autowired
	private AdoptionDAO dao;
	
	@Override
	public void test() {
		
		System.out.println("서비스 객체가 호출되었습니다.");
	}
	
	@Override
	public int m1() {
		
		return dao.m1();		
	}

}
