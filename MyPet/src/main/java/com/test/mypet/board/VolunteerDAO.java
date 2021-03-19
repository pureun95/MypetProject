package com.test.mypet.board;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class VolunteerDAO implements IVolunteerDAO{

	
	@Autowired
	private SqlSessionTemplate template;
	
	
	@Override
	public VolunteerDTO getSeqUser(String id) {
		
		return template.selectOne("volunteer.seqUser", id);
	}

	@Override
	public List<VolunteerDTO> list(HashMap<String, String> map) {

		return template.selectList("volunteer.list", map);
	}

	@Override
	public int getTotalCount(HashMap<String, String> map) {
		
		return template.selectOne("volunteer.count", map);
	}

	@Override
	public List<VolunteerDTO> getView(String seqVolunteer) {

		return template.selectList("volunteer.view", seqVolunteer);
	}

	@Override
	public List<VolunteerDTO> getForNext(String seqVolunteer) {
		
		return template.selectList("volunteer.fornext", seqVolunteer);
	}

	@Override
	public List<VolunteerDTO> getMaxMin() {
		
		return template.selectList("volunteer.maxmin");
	}

	@Override
	public int applyVolunteer(HashMap<String, String> map) {
		
		return template.insert("volunteer.applyVolunteer", map);
	}
	
	
	
}
