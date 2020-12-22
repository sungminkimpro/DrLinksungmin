package kr.co.Dr_Link.mvc.dao;

import java.util.List;

import kr.co.Dr_Link.mvc.dto.Hospital_boardDTO;
import kr.co.Dr_Link.mvc.dto.NewsDTO;
import kr.co.Dr_Link.mvc.dto.NewsReplDTO;

public interface MainDaoInter {
	
	public List<Hospital_boardDTO> getAllHospitalBoards();
	public List<Hospital_boardDTO> getAllHospitalBoards(int p_num);
	public Hospital_boardDTO getDetailHospitalBoard(String h_b_num);
	public void plusWatchCnt(String h_b_num);
	public int getBoardCnt();
	
	//public List<Hospital_boardDTO> getAllHealthBoards();
	public List<NewsDTO> getNewsPage(int p_num);
	public List<NewsDTO> getAllNewsBoards();
	public NewsDTO getNewsBoardsDetail(int b_num);
	public List<NewsReplDTO> getNewsRepl(int news_b_num);
}
