package com.test.mypet.member;

import lombok.Data;

@Data
public class ChatMessageDto {


	String user_id;
	String admin_id;
	
	String seqChat;

	String sender;
	String contet;
	String writeTime;
	

}
