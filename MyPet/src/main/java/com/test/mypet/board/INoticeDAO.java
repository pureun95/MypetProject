package com.test.mypet.board;

import java.util.List;

public interface INoticeDAO {

	List<NoticeDTO> noticeList();

	int getTotalCount();

	NoticeDTO get(String seqNotice);

	NoticeDTO getDetail(String seqNotice);

	int write(NoticeDTO ndto);

	void updateViewCount(NoticeDTO ndto);
}
