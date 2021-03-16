package com.test.mypet.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdoptionReviewDAO implements IAdoptionReviewDAO{
	
	@Autowired
	SqlSessionTemplate template;
	
	//전체 입양후기 게시글 얻기
	@Override
	public List<AdoptionReviewDTO> getList() {

		return template.selectList("adoption_review.list");
	}

}
