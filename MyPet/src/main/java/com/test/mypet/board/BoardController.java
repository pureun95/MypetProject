package com.test.mypet.board;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class BoardController {
	

	@Autowired
	IAdoptionReviewDAO ardao;
	
	//http://localhost:8090/mypet/board/template_list.action
	@RequestMapping(value = "/board/template_list.action", method = { RequestMethod.GET })
	public String template(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/template_list";

	}
	
	
	
	//http://localhost:8090/mypet/board/template_view.action
	@RequestMapping(value = "/board/template_view.action", method = { RequestMethod.GET })
	public String view(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/template_view";

	}
	
	//http://localhost:8090/mypet/board/template_write.action
	@RequestMapping(value = "/board/template_write.action", method = { RequestMethod.GET })
	public String write(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/template_write";

	}
		
		
	
	//http://localhost:8090/mypet/board/volunteerList.action
	@RequestMapping(value = "/board/volunteerList.action", method = { RequestMethod.GET })
	public String volunteer_list(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/volunteer_list";

	}
	
	
	//http://localhost:8090/mypet/board/volunteerView.action
	@RequestMapping(value = "/board/volunteerView.action", method = { RequestMethod.GET })
	public String volunteer_view(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/volunteer_view";

	}
		
		
	//http://localhost:8090/mypet/board/volunteerList.action
	@RequestMapping(value = "/board/volunteerWrite.action", method = { RequestMethod.GET })
	public String volunteer_write(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/volunteer_write";

	}
	
	@Autowired
	private IFaq dao;
	
	@RequestMapping(value = "/board/faqList.action", method = { RequestMethod.GET })
	public String faqList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		List<FaqDTO> list = dao.list();
		
		request.setAttribute("list", list);
		
		return "board/faqList";

	}
	
	@RequestMapping(value = "/board/faqAdd.action", method = { RequestMethod.GET })
	public String faqAdd(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/faqAdd";

	}

	@RequestMapping(value = "/board/faqEdit.action", method = { RequestMethod.GET })
	public String faqEdit(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {

		FaqDTO fdto = dao.get(seq);
		
		request.setAttribute("fdto", fdto);
		
		return "board/faqEdit";

	}
	
	@RequestMapping(value = "/board/faqDelete.action", method = { RequestMethod.GET })
	public String faqDelete(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/faqDelete";

	}
  
   
  
//푸른님
   
   @Autowired // 의존 주입하기
	private INoticeDAO noticeDAO;
   
   @RequestMapping(value = "/board/noticeList.action", method = { RequestMethod.GET })
   public String noticeList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      
	   
	   List<NoticeDTO> noticeList = noticeDAO.noticeList();

		request.setAttribute("noticeList", noticeList);
		
		
		
		
	   
      return "board/noticeList";
      
   }
   
   @RequestMapping(value = "/board/noticeView.action", method = { RequestMethod.GET })
   public String noticeView(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      
      return "board/noticeView";
      
   }
   
   @RequestMapping(value = "/board/noticeWrite.action", method = { RequestMethod.GET })
   public String noticeWrite(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      
      return "board/noticeWrite";
      
   }
   
   @RequestMapping(value = "/board/noticeEdit.action", method = { RequestMethod.GET })
   public String noticeEdit(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      
      return "board/noticeEdit";
   
   }
      
//준오님
   
   @RequestMapping(value = "/board/adoptionreviewlist.action", method = { RequestMethod.GET })
   public String adoptionReviewList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	   
	   List<AdoptionReviewDTO> rlist = ardao.getList();
	   
	   request.setAttribute("rlist", rlist);
	   
	   return "board/adoptionreviewList";
	   
   }
   
   @RequestMapping(value = "/board/adoptionreviewview.action", method = { RequestMethod.GET })
   public String adoptionReviewView(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seqAdoptionReview) {
	   
	   String id = (String)session.getAttribute("id");
	   String seqUser = ardao.getSeqUser(id);
	   //로그인 하고있는 회원 번호
	   session.setAttribute("seqUser", seqUser);
	   
	   
	   AdoptionReviewDTO dto = ardao.getInfo(seqAdoptionReview);
	   
	   String lseq = ardao.selectSeq();
	   System.out.println("=================================================="+lseq);
	   dto.setLseq(lseq);
	   
	   int vcount = Integer.parseInt(dto.getViewCount());
	   vcount++;
	   String temp = vcount + "";
	   dto.setViewCount(temp);

	   ardao.updateViewCount(dto);
	   	   
	   request.setAttribute("dto", dto);
	   
	   return "board/adoptionreviewView";
	   
   }
   @RequestMapping(value = "/board/adoptionreviewwrite.action", method = { RequestMethod.GET })
   public String adoptionReviewWrite(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	   //임시로 부여한 세션(회원 로그인)
	   session.setAttribute("id", "mola991011");
	   
	   
	   return "board/adoptionreviewWrite";
	   
   }
   
   @RequestMapping(value = "/board/adoptionreviewwriteok.action", method = { RequestMethod.POST })
   public void adoptionReviewWriteOk(HttpServletRequest request, HttpServletResponse response, HttpSession session, String title, String content) {
	   
	   //필요 정보 가져오기.
	   try {
	   String id = (String)session.getAttribute("id");
	   String seqUser = ardao.getSeqUser(id);

	   //DTO로 묶어서 insert문으로 보냄 DB작업
	   AdoptionReviewDTO dto = new AdoptionReviewDTO();
	   dto.setSeqUser(seqUser);
	   dto.setTitle(title);
	   dto.setContent(content);
	   
	   int result = ardao.insertReview(dto);
	   //방금 등록한 번호 가져오기.
	   String seqAdoptionReview = ardao.selectSeq();
	   
	   dto.setSeqAdoptionReview(seqAdoptionReview);
	   
	   //2. 첨부 파일 처리하기
	   MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
	   
	   //첨부파일 참조 객체
	   // - <input type="file" name="attach">
	   MultipartFile attach = multi.getFile("attach");

		System.out.println(attach.getName());	//attach 
		System.out.println(attach.getOriginalFilename());	//프로젝트 css.txt 파일명
		System.out.println(attach.getSize());	//657 파일크기
		System.out.println(attach.getContentType());	//text/plain 파일 포멧
		
		String filename = "";
		
		//업로드 파일이 어딨는지?? -> 임시 폴더에 저장 -> 우리가 원하는 폴더로 이동
		try {
			
			String path = request.getRealPath("/resources/images/review");//webapp > files
			System.out.println(path);
			
			filename = getFileName(path, attach.getOriginalFilename());
			
			//이동시킬 최종 경로 + 파일명
			File file = new File("E:\\4차 프로젝트(스프링)\\mypet\\MyPet\\src\\main\\webapp\\resources\\images\\review" + "\\" + filename);
			dto.setImage("/resources/images/review/"+filename);
			//무조건 덮어쓰기 -> 중복 방지 -> 넘버링 직접 구현..
			attach.transferTo(file); //renameTo()와 동일
			
		} catch (Exception e) {
			System.out.println(e);
		}
	   
	   if (filename!=null) {
		   result = ardao.insertImageReviewY(dto);
		   
	   } else {
		   
		   result = ardao.insertImageReview(dto);
	   }
	   

	   if (result!=0) {
		    response.setContentType("text/html; charset=UTF-8");

			PrintWriter writer = response.getWriter();
			writer.print("<html><body>");
			writer.print("<script>");
			writer.print("alert('입양 후기 등록이 성공하였습니다.');");
			writer.print("location.href='/mypet/board/adoptionreviewlist.action';");
			writer.print("</script>");
			writer.print("</body></html>");
			
			writer.close();
			
		} else {
			PrintWriter writer = response.getWriter();
			writer.print("<html><body>");
			writer.print("<script>");
			writer.print("alert('failed.');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.print("</body></html>");
			
			writer.close();
		}
	   } catch (IOException e) {
		   e.printStackTrace();
	   }
	   
   }
   

	private String getFileName(String path, String filename) {
		
		
		//return System.currentTimeMillis() + "_" + filename; 
		
		//System.out.println(System.nanoTime());
		
		//return System.nanoTime() + "_" + filename;
		
		//dog.png -> dog_1.png -> dog_2.png
		
		//path = "files"
		//filename = "dog.png"
		
		int n = 1; //인덱스 숫자
		int index = filename.indexOf(".");
		String tempName = filename.substring(0, index); //"dog"
		String tempExt = filename.substring(index); //".png"
		
		while (true) {
			
			File file = new File(path + "\\" + filename); //files\dog.png
			
			if (file.exists()) {
				//있다 -> 중복 -> 파일명 수정
				filename = tempName + "_" + n + tempExt;
				n++;
				
			} else {
				//없다 -> 반환
				return filename;
			}
			
		}
		
	}
   
   
   @RequestMapping(value = "/board/adoptionreviewedit.action", method = { RequestMethod.GET })
   public String adoptionReviewEdit(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seqAdoptionReview) {
	   
	   AdoptionReviewDTO dto = ardao.getInfo(seqAdoptionReview);
	   
	   request.setAttribute("dto", dto);
	   
	   return "board/adoptionreviewEdit";
	   
   }
      
   
   @RequestMapping(value = "/board/adoptionrevieweditok.action", method = { RequestMethod.POST })
   public String adoptionReviewEditOk(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seqAdoptionReview, String content, String title) {
	   
	   System.out.println(seqAdoptionReview);
	   System.out.println(title);
	   System.out.println(content);

	   AdoptionReviewDTO dto = new AdoptionReviewDTO();
	   dto.setSeqAdoptionReview(seqAdoptionReview);
	   dto.setTitle(title);
	   dto.setContent(content);
	   
	   int result = ardao.updateReview(dto);
	   System.out.println(result);
	      
	   List<AdoptionReviewDTO> rlist = ardao.getList();
		   
	   request.setAttribute("rlist", rlist);
		   
	   return "board/adoptionreviewList";	   
	   
   }
   
   
   

}
