package spring.control;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spring.include.Paging;
import mybatis.dao.JKBoardDAO;
import mybatis.vo.JKBoardVO;

public class ListControl implements Controller {

	// 페이징 기법에 필요한 변수
	public static final int blockList = 7; //한페이지의 게시물수
	public static final int blockPage = 5; // 한 블럭당 표현될 페이지 수

	int nowPage; // 현재 페이지
	int rowTotal; // 총게시물수
	String pageCode;// 페이지 처리된 HTML코드
	
	// 검색 기능에 필요한 값
	String searchType, searchValue;
	
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
		String memid = request.getParameter("memid");
		String c_page = request.getParameter("nowPage");
		
		//처음 리스트 화면에 들어갈시 첫페이지를 보여준다.
		if(c_page == null)
			nowPage = 1;
		else
			nowPage = Integer.parseInt(c_page);
		
		// 페이징 코드값 구하기
		int status = 0; // "BBS"는 게시판 종류
		rowTotal = dao.getTotalCount(String.valueOf(status));
		System.out.println(rowTotal);
		Paging page = new Paging(nowPage, rowTotal, blockList, blockPage);
		pageCode = page.getSb().toString();
		
		//표현하고자 하는 게시물의 범위(begin과 end)
		int begin = page.getStartRow();
		
		int end = rowTotal;
		if(page.getEndRow() < rowTotal)
			end = page.getEndRow();
		
		// 표현할 게시물들만 가져오기 위해 Map구조 생성한다.
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("status", status);
		map.put("begin", begin);
		map.put("end", end);
		
		// 위의 map을 mybatis환경의 목록을 가져오는 sql에 인자로 주면서
		// List를 가져온다.
		JKBoardVO[] ar = dao.getList(map);
		
		// 반환할 준비
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", ar);
		mv.addObject("nowPage", nowPage);
		mv.addObject("pageCode", pageCode);
		mv.addObject("rowTotal", rowTotal);
		mv.addObject("blockList", blockList);
		mv.addObject("memid", memid);
		mv.setViewName("/list");
		
		return mv;
	}
	
	
}
