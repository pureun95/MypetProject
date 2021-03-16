package com.test.mypet.adoption;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class AdoptionDAO implements IAdoptionDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	
	//리스트
	@Override
	public List<AdoptionDTO> getList(HashMap<String, String> map) {
		
		return template.selectList("adoption.list", map);
		 
	}

	
	//페이징
	@Override
	public int getTotalCount(HashMap<String, String> map) {
		
		return template.selectOne("adoption.count", map);
	}

	
	
	

}
