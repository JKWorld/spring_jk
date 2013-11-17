package spring.control;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.dao.JKBoardDAO;
import mybatis.vo.JKBoardVO;
import mybatis.vo.JKReplyVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ViewControl implements Controller {

	JKBoardDAO dao;
	
	String seq;
	
	JKBoardVO vo;// 보고자 하는 게시물
	
	JKReplyVO[] rvo;// 선택한 게시물의 댓글들
	
	public void setDao(JKBoardDAO dao) {
		this.dao = dao;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 파라미터 받기
		request.setCharacterEncoding("utf-8");
		seq = request.getParameter("seq");
		String nowPage = request.getParameter("nowPage");
		String memid = request.getParameter("memid");
		System.out.println(memid+"mem");
		vo = dao.searchBoard(seq);
		int hit = 1+Integer.valueOf(vo.getHit());// 조회수 증가
		System.out.println(hit);
		HashMap<String, String> map = new HashMap<>();
		
		map.put("seq", seq);
		map.put("hit", String.valueOf(hit));
		
		dao.upHit(map);
		rvo = dao.getReply(map);
		
		System.out.println(vo.getWriter());
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.addObject("rvo", rvo);
		mv.addObject("nowPage", nowPage);
		mv.addObject("memid", memid);
		mv.setViewName("/view");
		
		return mv;
	}
	
}
