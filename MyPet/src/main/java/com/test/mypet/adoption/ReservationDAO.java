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

	//입양예약신청서 등록.
	@Override
	public int insertReservation(VwReservationDTO dto) {

		
		return template.insert("adoption_reservation.insertReservation", dto);
	}

	//내 예약목록 출력.
	@Override
	public List<VwReservationDTO> getMyReservationList(String seqUser) {

		return template.selectList("adoption_reservation.getMyReservationList", seqUser);
	}


	
	
	
	
	
	
}
