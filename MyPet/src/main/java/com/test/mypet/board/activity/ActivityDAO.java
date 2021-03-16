package com.test.mypet.board.activity;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ActivityDAO implements IActivityDAO{

	@Autowired
	private SqlSessionTemplate template;

	
	
	@Override
	public List<ActivityDTO> list(HashMap<String, String> map) {

//		String where = 
//				String.format(" where rownum between %s and %s ",map.get("begin"),map.get("end"));
//		
//		System.out.println("where : "+ where);
//		System.out.println("DAO.list");
		
		System.out.println(  map.get("search") +map.get("begin")+map.get("end") );
		
		if( map.get("search") != null) {
			System.out.println("검색어 있음");
			return template.selectList("activity.act_list_search", map);
		}
		
		
		return template.selectList("activity.act_list", map);
	}

	
	
	
	
	@Override
	public ActivityDTO view(String seqActivity) {
		// TODO Auto-generated method stub		
		return template.selectOne("activity.act_view",seqActivity);
	}


	// 나중의 검색을 위해....
	@Override
	public int totalCount(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		
		return template.selectOne("activity.act_count");
	}
}

