package com.test.mypet.board;

import lombok.Data;

@Data
public class AdoptionReviewDTO {
	private String seqAdoptionReview;
	private String seqUser;
	private String title;
	private String content;
	private String viewcount;
	private String writedate;
	private String image;
}
