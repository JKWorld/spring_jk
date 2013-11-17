package spring.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.dao.JKBoardDAO;
import mybatis.vo.JKReplyVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class RwriteControl implements Controller{

	JKBoardDAO dao;

	JKReplyVO vo;
	
	public JKReplyVO getVo() {
		return vo;
	}

	public void setVo(JKReplyVO vo) {
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
		
		vo = new JKReplyVO();
		// 파라미터값 받기
		request.setCharacterEncoding("utf-8");
		
		String nowPage = request.getParameter("nowPage");
		String seq = request.getParameter("seq");
		String memid = request.getParameter("memid");
		String content = request.getParameter("content");
		String ip = request.getLocalAddr().toString();
		
		vo.setSeq(Integer.valueOf(seq));
		//vo.setWriter(writer);
		vo.setContent(content);
		vo.setIp(ip);
		dao.writeReply(vo);//db에 저장

		ModelAndView mv = new ModelAndView();
		mv.addObject("nowPage", nowPage);
		mv.addObject("memid", memid);
		mv.setViewName("redirect:/view.inc?seq="+seq);
		
		return mv;
	}

}
