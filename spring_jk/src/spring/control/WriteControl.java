package spring.control;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import mybatis.dao.JKBoardDAO;
import mybatis.vo.JKBoardVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import spring.util.FileSaveUtil;

@Controller
public class WriteControl {
	public WriteControl(){System.out.println("WRITE");}
	// Autowire기능을 부여하여 Annotation지정을 하려면
	// Dispatcher-servlet.xml문서에
	// <context:annotation-config />가 선언되어 있어야 한다.
	@Autowired
	JKBoardDAO dao;
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	HttpServletRequest request;
	
	// Dispatcher-servlet.xml에서 현재 빈이 선언될 때
	// property요소로 값이 저장되도록 한다.(Setter Injection)
	private String uploadPath;
	
	public void setUploadPath(String n){
		uploadPath = n;
	}
	
	@RequestMapping(value="/write.inc", method=RequestMethod.POST)
	public ModelAndView write(JKBoardVO vo)throws Exception{
		
		request.setCharacterEncoding("utf-8");
		System.out.println("한글처리확인~~~첫번째부분"+vo.getTitle());
		String test=request.getParameter("tester");
		
		System.out.println("이건뭐지"+"//"+test);
		
		//파일이 첨부되었다면 스프링에서는 java.io.File로 
		// 인식하는 것이 아니라 MultipartFile라는 객체로 저장된다.
		// 그러므로 vo객체에서 upload라는 File의 자료형을
		// MultipartFile로 수정해야 한다.
		
		//파일첨부가 되었을 때만 파일 처리하는 부분
		MultipartFile ff=vo.getUpload();
//		if(vo != null && vo.getUpload() != null){
		if(ff.getSize()!=0){
			request.setCharacterEncoding("utf-8");
			System.out.println("파일업로드 if문");
			//파일첨부가 된 경우이므로 파일처리
			String path = servletContext.getRealPath(uploadPath);
			
			MultipartFile uploadFile = vo.getUpload();//첨부파일
			
			String filename = uploadFile.getOriginalFilename();
			
			// 중복되는 파일이름이 있는지 검사
			filename = FileSaveUtil.checkSameFileName(filename, path);
			System.out.println(filename);
			// 파일 저장
			uploadFile.transferTo(new File(path, filename));
			
			vo.setUploadFileName(filename);// 파일명 지정
			
		}else if(ff.getSize()==0){
			
		
			System.out.println("파일업로드2 else");
			request.setCharacterEncoding("utf-8");
			System.out.println("else부분 한글처리 확인"+vo.getTitle());
			vo.setUploadFileName("no_file");
		}
		// ip추가
		String ip = request.getRemoteAddr();
		vo.setIp(ip);
		
		// DB에 저장
		dao.writeBbs(vo);
		
		// 뷰설정
		ModelAndView mv = new ModelAndView();
		// Redirect방식으로 이동시키기
		mv.setViewName("redirect:/list.inc");
		
		return mv;		
	}
}














