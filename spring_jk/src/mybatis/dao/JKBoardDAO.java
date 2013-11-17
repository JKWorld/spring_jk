package mybatis.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import mybatis.vo.JKBoardVO;
import mybatis.vo.JKReplyVO;
import mybatis.vo.MemberVO;

import org.mybatis.spring.SqlSessionTemplate;

public class JKBoardDAO {

	private SqlSessionTemplate ss;

	public SqlSessionTemplate getSs() {
		return ss;
	}

	public void setSs(SqlSessionTemplate ss) {
		this.ss = ss;
	}
	
	// 리스트를 불러오는 메서드 ListAction에서 호출한다.
	public JKBoardVO[] getList(Map<String, Integer> map){
		
		List<JKBoardVO> list = ss.selectList("board.list", map);
		
		JKBoardVO[] ar = null;
		
		if(list != null && list.size() > 0){
			ar = new JKBoardVO[list.size()];
			
			list.toArray(ar);
		}
		return ar;
	}
	
	// 게시물 저장 메서드
	public boolean writeBbs(JKBoardVO vo){
		
		java.sql.Date dd=new java.sql.Date(System.currentTimeMillis());
		vo.setRegdate(dd.toString());
		
		
		int cnt = ss.insert("board.write", vo);
		
		if(cnt > 0)
			return true;
		else
			return false;
	}
	
	// 기본키로 게시물을 검색해서 보기
	public JKBoardVO searchBoard(String seq){
		
		JKBoardVO vo = ss.selectOne("board.view", seq);
		
		return vo;
	}
	
	// 게시물 수정하는 기능의 메서드!
	public void updateBbs(JKBoardVO vo){
		ss.update("board.update", vo);
	}
	
	// 게시물 삭제 기능 메서드!
	public void delBbs(HashMap<String, String> map){
		ss.update("board.delete", map);
	}
	
	// 한 게시물의 댓글들 검색하는 메서드
	public JKReplyVO[] getReply(Map<String, String> map){
	
		List<JKReplyVO> list = ss.selectList("board.reply", map);
	
		JKReplyVO[] ar = null;
	
		if(list != null && list.size() > 0){
			ar = new JKReplyVO[list.size()];
		
			list.toArray(ar);
		}
		return ar;
	}
			
	// 댓글 저장 메서드!
	public boolean writeReply(JKReplyVO vo){
		
		int cnt = ss.insert("board.rwrite", vo);
		
		if(cnt > 0)
			return true;
		else
			return false;
	}
	
	// 페이징 기법을 위한 전체 게시물 수를 반환하는 메서드 - ListAction
	public int getTotalCount(String n){
		
		int cnt = ss.selectOne("board.totalCount", n);// "BBS"
		
		return cnt;
	}
	
	//조회수 증가 메서드
	public void upHit(Map<String, String> map){
		
		ss.update("board.uphit", map);
	}
	//로그인 메서드
	public MemberVO getMem(Map<String, String> map){
		
		MemberVO vo = ss.selectOne("board.login", map);
		
		return vo;
	}
}
