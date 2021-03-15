package com.test.mypet.adoption;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDAO implements IReservationDAO {


	@Autowired
	private SqlSessionTemplate template;

	@Override
	//회원정보가져오기.
	public VwReservationDTO getUserInfo(Object object) {
		
		System.out.println("object = "+object);
		String id = (String)object;
		System.out.println("id = " + id);
		System.out.println("template " + (template == null));
		return template.selectOne("adoption_reservation.getUserInfo", id);
	}

	//회원 주소에 따른 동물병원 목록 가져오기.
	@Override
	public List<VetDTO> getVetList(String address) {

		return template.selectList("adoption_reservation.getVetList",address);
	}

	
	
	
	
	
	
}
