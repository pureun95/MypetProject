package com.test.mypet.board;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * 공지사항 관련 db전담 객체
 * @author 
 *
 */
@Repository
public class NoticeDAO implements INoticeDAO {

	/**
	 * db 연동 객체
	 */
	@Autowired
	private SqlSessionTemplate template;
	
	/**
	 * 공지사항 리스트 출력 메소드
	 */
	@Override
	public List<NoticeDTO> noticeList() {

		return template.selectList("notice.noticeList");
		//nameplace.id
	}
	
	/**
	 * 공지사항 리스트 전체 페이지 조회 메소드
	 */
	@Override
	public int getTotalCount() {
		
		return template.selectOne("notice.getTotalCount");
		
	}
	
	/**
	 * 공지사항 상세페이지 출력 메소드
	 */
	@Override
	public NoticeDTO get(String seqNotice) {

		return template.selectOne("notice.get", seqNotice);
	}
	

//	public static void getDetail(HttpServletRequest request, String seqNotice, NoticeDAO noticeDAO) {
	public NoticeDTO getDetail(String seqNotice) {
		
				NoticeDTO ndto =new NoticeDTO();
					
				//Dto 에 글번호도 담기
				ndto.setSeqNotice(seqNotice);
				
				NoticeDAO noticeDAO = new NoticeDAO();
				
				NoticeDTO ndto2 = noticeDAO.get(seqNotice);

				return template.selectOne("notice.getData", seqNotice);
			
	}
	
	
	/**
	 * 공지사항 글쓰기 메소드
	 */
	@Override
	public int write(NoticeDTO ndto) {

		return template.insert("notice.write", ndto);
	}
	
	
	//조회수 증가
	/**
	 * 공지사항 조회수 증가 메소드
	 */
	@Override
	public void updateViewCount(NoticeDTO ndto) {

		
		template.update("notice.updateViewCount", ndto);
		
	}
	
	

}
	
	

