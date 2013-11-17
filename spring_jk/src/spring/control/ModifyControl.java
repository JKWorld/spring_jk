package spring.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.dao.JKBoardDAO;
import mybatis.vo.JKBoardVO;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ModifyControl implements Controller {

	JKBoardVO vo;
	
	JKBoardDAO dao;
	
	
	
	public JKBoardVO getVo() {
		return vo;
	}



	public void setVo(JKBoardVO vo) {
		this.vo = vo;
	}



	public JKBoardDAO getDao() {
		return dao;
	}



	public void setDao(JKBoardDAO dao) {
		this.dao = dao;
	}



	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		// 파라미터값 받기
		String seq = request.getParameter("seq");
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		
		
		int i = Integer.parseInt(seq);
		System.out.println(i+"인트아이값");
		
//		System.otWriterut.println(writer+title);
			vo=new JKBoardVO();
		System.out.println(seq);
		
//		if(vo!=null){
			vo.setSeq(i);
			vo.setWriter(writer);
			vo.setTitle(title);
			vo.setContent(content);
			
			
			dao.updateBbs(vo);	
		
//		}else if(vo==null){
//			System.out.println("ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ");
//		}
		
		
		ModelAndView mv = new ModelAndView();
		
		//mv.addObject("vo", vo);
		
		mv.setViewName("redirect:/list.inc");
		
		return mv;
	}
	
}
