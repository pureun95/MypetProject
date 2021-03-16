package com.test.mypet.shelter;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShelterDAO implements IShelter{

	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<ShelterDTO> list(HashMap<String, String> map) {
		
//		if(map.get("search") != null) {
//			
//			String where = "";
//			
//			where = String.format("where name like '%%%s%%'", map.get("search"));
//		}
		
		return template.selectList("shelter.list", map);
	}
	

	@Override
	public ShelterDTO get(String seqShelter) {
		
		return template.selectOne("shelter.get", seqShelter);
	}


	@Override
	public List<LocationDTO> location() {
		
		return template.selectList("shelter.list");
	}

	
}
