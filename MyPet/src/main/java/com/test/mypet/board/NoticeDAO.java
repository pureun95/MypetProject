package com.test.mypet.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO implements INoticeDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public List<NoticeDTO> noticeList() {

		return template.selectList("notice.noticeList");
		//nameplace.id
	}
}
