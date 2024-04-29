package Calendar.Service;

import java.util.List;

import Calendar.DTO.Calendar;


/**
 * 게시판 프로그램의 인터페이스
 * * 게시판의 기능 메소드
 * - 게시글 목록
 * - 게시글 조회
 * - 게시글 등록
 * - 게시글 수정
 * - 게시글 삭제
 * 
 */
public interface CalendarService {
	// 게시글 목록
	List<Calendar> list();

	// 게시글 조회
	Calendar select(int no);

	// 게시글 등록
	int insert(Calendar cal);

	// 게시글 수정
	int update(Calendar cal);

	// 게시글 삭제
	int delete(int no);

	// public Board updateView(int no)
	
	// 연,월로 일정 목록 조회
	List<Calendar> listByYearMonth(String year, String month);
}







