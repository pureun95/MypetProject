package com.test.mypet.board;

import lombok.Data;

@Data
public class NoticeDTO {
	
	private String seqNotice;
	private String title;
	private String content;
	private String writeDate;
	private String viewCount;

}
