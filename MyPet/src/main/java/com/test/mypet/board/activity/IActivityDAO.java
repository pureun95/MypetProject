package com.test.mypet.board.activity;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface IActivityDAO {

	List<ActivityDTO> list(HashMap<String, String> map);
	
	
	ActivityDTO view(String seqActivity);


	int totalCount(HashMap<String, String> map);
	
	
	
}
