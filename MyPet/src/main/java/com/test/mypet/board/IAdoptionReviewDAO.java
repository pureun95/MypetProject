package com.test.mypet.board;

import java.util.List;

public interface IAdoptionReviewDAO {

	List<AdoptionReviewDTO> getList();

	AdoptionReviewDTO getInfo(String seqAdoptionReview);

	int updateReview(AdoptionReviewDTO dto);

	void updateViewCount(AdoptionReviewDTO dto);

	String getSeqUser(String id);

	int insertReview(AdoptionReviewDTO dto);

	String selectSeq();

	int insertImageReview(AdoptionReviewDTO dto);

	int insertImageReviewY(AdoptionReviewDTO dto);

}
