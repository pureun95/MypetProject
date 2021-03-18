package com.test.mypet.member;

import lombok.Data;

@Data
public class ChatMessageDTO {


	String user_id;
	String admin_id;
	
	String seqChat;
	String seqUser;
	String seqAdmin;

	String sender;
	String content;
	String writeTime;
	

}
