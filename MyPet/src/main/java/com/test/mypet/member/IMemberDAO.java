package com.test.mypet.member;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface IMemberDAO {
	
	// 로그인(유저)
	public MemberDTO memberLogin(MemberDTO dto);
	
	// 로그인(관리자)
	public AdminDTO adminLogin(AdminDTO dto_admin);

	public List<ChatMessageDTO> list(String user_id);

	public int addlist(ChatMessageDTO dto);

	public void register(MemberDTO ndto);

	public int idCheck(String id);

//	public ChatMessageDTO checkUser(String seqUser);
//	public int checkUser(String seqUser);

//	public int addlist(ChatMessageDto dto);

	

	
}
