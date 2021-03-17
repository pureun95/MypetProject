package com.test.mypet.board;

import lombok.Data;

@Data
public class AdoptionReviewDTO {
	private String seqAdoptionReview;
	private String seqUser;
	private String title;
	private String content;
	private String viewCount;
	private String writeDate;
	private String image;
	
	private String lseq;
	
	public String getSeqAdoptionReview() {
		return seqAdoptionReview;
	}
	public void setSeqAdoptionReview(String seqAdoptionReview) {
		this.seqAdoptionReview = seqAdoptionReview;
	}
	public String getSeqUser() {
		return seqUser;
	}
	public void setSeqUser(String seqUser) {
		this.seqUser = seqUser;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getViewCount() {
		return viewCount;
	}
	public void setViewCount(String viewCount) {
		this.viewCount = viewCount;
	}
	public String getLseq() {
		return lseq;
	}
	public void setLseq(String lseq) {
		this.lseq = lseq;
	}
}
