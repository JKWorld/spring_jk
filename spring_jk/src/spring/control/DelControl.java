package spring.control;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.dao.JKBoardDAO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DelControl implements Controller{

	JKBoardDAO dao;
	
	
	public JKBoardDAO getDao() {
		return dao;
	}


	public void setDao(JKBoardDAO dao) {
		this.dao = dao;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 파라미터 값 받기
		String seq = request.getParameter("seq");
		
		HashMap<String, String> map = new HashMap<>();
		
		map.put("seq", seq);
		map.put("a", "1");
		dao.delBbs(map);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/list.inc");
		
		return mv;
	}

}
