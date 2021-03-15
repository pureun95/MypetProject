package com.test.mypet.shelter;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShelterDAO implements IShelter{

	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<ShelterDTO> list() {
		return template.selectList("shelter.list");
	}

	@Override
	public ShelterDTO get(String seqShelter) {
		
		return template.selectOne("shelter.get", seqShelter);
	}

}
