package spring.control;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.dao.JKBoardDAO;
import mybatis.vo.MemberVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class LoginControl implements Controller{

	MemberVO vo;
	
    JKBoardDAO dao;
    
    
	public MemberVO getVo() {
		return vo;
	}


	public void setVo(MemberVO vo) {
		this.vo = vo;
	}


	public void setDao(JKBoardDAO dao) {
		this.dao = dao;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		// 파라미터값 받기
		req.setCharacterEncoding("utf-8");
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
	
		HashMap<String, String> map = new HashMap<>();
		
		map.put("id", id);
		map.put("pwd", pwd);
		
		vo = dao.getMem(map);
		System.out.println("이름:"+vo.getName());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("mvo", vo);
		mv.setViewName("/loginsuc");
		
		return mv;
	}

}
