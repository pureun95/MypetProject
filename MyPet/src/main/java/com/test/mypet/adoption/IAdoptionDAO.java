package com.test.mypet.adoption;

import java.util.HashMap;
import java.util.List;

import com.test.mypet.member.MemberDTO;


public interface IAdoptionDAO {

	/**
	 * 입양 리스트 불러오는 메서드
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
	 * @param 게시물 번호
	 * @return 입양글 상세정보
	 */
	AdoptionDTO getView(String seqAdoption);
	
	
	/**
	 * 
	 * @param 게시물 번호
	 * @return 쿼리 결과
	 */
	int getLikes(String seqAdoption);

	
	/**
	 * 
	 * @param 유저 번호
	 * @return 유저의 찜하기 목록
	 */
	List<AdoptionDTO> getLikesUser(String seqUser);
	
	
	/**
	 * 
	 * @param seqUser 유저번호
	 * @param seqAdoption 입양글 번호
	 * @return
	 */
	int insertLikes(HashMap<String, String> map);
}
