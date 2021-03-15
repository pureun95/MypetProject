package com.test.mypet.reportboard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

public interface IReportBoardDAO {

	
	List<ReportBoardDTO> list();
	
	
}
