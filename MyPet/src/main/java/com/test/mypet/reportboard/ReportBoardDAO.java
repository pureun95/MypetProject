package com.test.mypet.reportboard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ReportBoardDAO implements IReportBoardDAO{

	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public List<ReportBoardDTO> list() {
		return template.selectList("reportBoard.list");
	}
	

}
