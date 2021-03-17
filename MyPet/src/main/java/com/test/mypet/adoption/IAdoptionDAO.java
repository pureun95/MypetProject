package com.test.mypet.adoption;

import java.util.HashMap;
import java.util.List;


public interface IAdoptionDAO {

	/**
	 * 페이징 입양 리스트 불러오는 메서드
	 * @param map 검색결과
	 * @return 입양리스트
	 */
	List<AdoptionDTO> getList(HashMap<String, String> map);
	
	
	/**
	 * 전체 입양 리스트 불러오는 메서드
	 * @param map 검색결과
	 * @return 입양리스트
	 */
	List<AdoptionDTO> getAllList(HashMap<String, String> map);
	

	/**
	 * 
	 * @param map 검색결과
	 * @return 총 카운트
	 */
	int getTotalCount(HashMap<String, String> map);

	
	/**
	 * 
	 * @param 게시물번호
	 * @return 입양글 상세정보
	 */
	AdoptionDTO getView(String seqAdoption);
	
}
