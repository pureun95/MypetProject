package com.test.mypet.adoption;

import java.util.HashMap;
import java.util.List;


public interface IAdoptionDAO {

	/**
	 * 입양 리스트 불러오는 메서드
	 * @param map 검색결과
	 * @return 입양리스트
	 */
	List<AdoptionDTO> getList(HashMap<String, String> map);
	
	
	/**
	 * 
	 * @param map 검색결과
	 * @return 총 카운트
	 */
	int getTotalCount(HashMap<String, String> map);
	
}
