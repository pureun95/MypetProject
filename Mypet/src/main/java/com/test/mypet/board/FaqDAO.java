package com.test.mypet.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
/***
 * 
 * @author 윤지현
 *
 */
@Repository
public class FaqDAO implements IFaq{

	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public List<FaqDTO> list() {
		
		return template.selectList("faq.list");
	}

	@Override
	public FaqDTO get(String seqFaq) {
		
		return template.selectOne("faq.get", seqFaq);
	}

	@Override
	public int add(FaqDTO fdto) {
		
		return template.insert("faq.add", fdto);
	}

}
