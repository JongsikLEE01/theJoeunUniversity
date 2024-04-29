package board.Service;

import java.util.List;

import board.DAO.BoardDAO;
import admin.DTO.Board;




/**
 * 게시판 기능 - 비즈니스 로직 클래스
 */
public class BoardServiceImpl implements BoardService {
	
	private BoardDAO boardDAO = new BoardDAO();

	@Override
	public List<Board> list() {
		// 1. DAO 객체에 게시글 목록 요청
		List<Board> boardList = boardDAO.list();
		// 2. 게시글 목록 데이터 가공
		// pass
		
		// 3. 게시글 목록 반환
		return boardList;
	}

	@Override
	public Board select(int no) {
		// 1. 게시글 번호에 대한 게시글 정보 데이터 요청
		Board board = boardDAO.select(no);
		
		// 2. 게시글 정보 반환
		return board;
	}
	
	//검색 목록
	@Override
	public List<Board> search(String title) {
		List<Board> searchList = boardDAO.search(title);
		return searchList;
	}


}