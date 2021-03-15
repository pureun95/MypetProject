package com.test.mypet.adoption;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class AdoptionDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int m1() {
		
		//insert into tblMyBatis (seq, num, txt) values (seqMyBatis.nextVal, 2136, '이일삼육')
		
		//executeUpdate()
		// - template.insert(statement)
		// - template.update(statement)
		// - template.delete(statement)
		
		//executeQuery()
		// - template.selectXXX(statement);
		
		//template.insert("insert into tblMyBatis (seq, num, txt) values (seqMyBatis.nextVal, 2136, '이일삼육')");
		
		return template.selectOne("adoption.m1");
		 
	}

}
