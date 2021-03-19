package com.test.mypet.board;

import lombok.Data;

@Data
public class NoticeDTO {
	
	private String seqNotice;
	private String title;
	private String content;
	private String writeDate;
	private String viewCount;
	private String image;
	
	private String id;
	
//	private int prevNum; //이전글의 글번호를 담을 필드
//	private int nextNum; //다음글의 글번호를 담을 필드
	
	private String lseq;
	private String result;

}
