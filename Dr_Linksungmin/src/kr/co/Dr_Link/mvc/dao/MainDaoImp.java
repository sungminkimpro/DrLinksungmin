package kr.co.Dr_Link.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.Dr_Link.mvc.dto.Hospital_boardDTO;
import kr.co.Dr_Link.mvc.dto.NewsDTO;
import kr.co.Dr_Link.mvc.dto.NewsReplDTO;

@Repository
public class MainDaoImp implements MainDaoInter {
	
	private static final Logger logger=
            LoggerFactory.getLogger(MainDaoImp.class);
	
	@Autowired
	private SqlSessionTemplate ss;
	
	public List<Hospital_boardDTO> getAllHospitalBoards() {  // 공지사항 게시판 들어갈 때
		System.out.println("boardListDAO 요청");
		logger.info("h_boardListCalled...");
		return ss.selectList("board.boardList");
	}
	public List<Hospital_boardDTO> getAllHospitalBoards(int p_num) { // 공지사항 게시판 페이지 이동
		Map<String, Integer> map = new HashMap<>();
		if (p_num == 1) {
			map.put("start", p_num);
			map.put("end", p_num*10);
		} else {
			map.put("start", p_num*10-9);
			map.put("end", p_num*10);
		}
		return ss.selectList("board.boardListPage", map);
	}
	public Hospital_boardDTO getDetailHospitalBoard(String h_b_num) { // 공지사항 상세페이지
		System.out.println("boardDetailDAO 요청");
		return ss.selectOne("board.boardDetail", h_b_num);
	}

	public int getBoardCnt() {	 									// 공지사항 게시판 총 글 수
		System.out.println("getCnt 요청" + "총 행의 개수");
		return ss.selectOne("board.getCnt");
	};
	
	public void plusWatchCnt(String h_b_num) {  				// 공지사항 게시판 조회수 증가
		System.out.println("updateCntDAO 요청");
		ss.update("board.plusCnt", h_b_num);
	}
	
	public List<NewsDTO> getAllNewsBoards() {   				// 건강정보 게시판 들어갈 때
		System.out.println("getAllNewsBoards 요청");
		return ss.selectList("board.getAllNewsBoards");
	}
	public List<NewsDTO> getNewsPage(int p_num) {	// 건강정보 게시판 페이지 요청
		System.out.println("getNewsPage p_num 요청!");
		Map<String, Integer> map = new HashMap<>();
		if (p_num == 1) {
			map.put("start", p_num);
			map.put("end", p_num*4); 
		} else {
			map.put("start", (p_num*4-4)+1);
			map.put("end", p_num*4);
		}
		return ss.selectList("board.getAllNewsBoards", map);
	}
	public NewsDTO getNewsBoardsDetail(int b_num) {
		System.out.printf("getNewsBoardsDetail 요청 : %d", b_num, "\n");
		return ss.selectOne("board.getNewsBoardsDetail", b_num);
	}
	
	public List<NewsReplDTO> getNewsRepl(int news_board_num) {
		System.out.println("getNewsRepl 요청 : " + news_board_num);
		return ss.selectList("board.news_replList", news_board_num);
	}
	
	
	/*      수정할 사항!!!
	public List<Hospital_boardDTO> getAll() {
		List<Hospital_boardDTO> dt = ss.selectList("board.getAll");
		System.out.println("총 개수 : " + dt.get(0).getGetCnt());
		return null;
	}
	*/
	
	
}
