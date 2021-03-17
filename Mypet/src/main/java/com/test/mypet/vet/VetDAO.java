package com.test.mypet.vet;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class VetDAO implements IVet{
	
	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<VetDTO> list(HashMap<String, String> map) {
		
		return template.selectList("vet.list", map);
	}

	@Override
	public VetDTO get(String seqVet) {
		
		
		return template.selectOne("vet.get", seqVet);
		
	}

	@Override
	public int edit(VetDTO vdto) {
		
		return template.update("vet.edit",vdto);
	}

	@Override
	public int getTotalCount(HashMap<String, String> map) {
		
		return template.selectOne("vet.count",map);
	}


}
