package com.test.mypet.goods;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class GoodsDAO implements IGoodsDAO{

	
	@Autowired
	private SqlSessionTemplate template;


	@Override
	public GoodsDTO goods(String seqGoods) {
		return template.selectOne("goods.goods", seqGoods);
	}

	@Override
	public List<GoodsDTO> list(HashMap<String, String> map) {
		return template.selectList("goods.list", map);
	}

	@Override
	public void order(GoodsDTO dto) {
		template.insert("goods.order", dto);
	}

	@Override
	public int getSeqOrder(GoodsDTO dto) {
		return template.selectOne("goods.getSeqOrder", dto);
	}




	
}
