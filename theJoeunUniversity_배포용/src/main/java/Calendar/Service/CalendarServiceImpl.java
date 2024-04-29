package Calendar.Service;

import java.util.List;

import Calendar.DAO.CalendarDAO;
import Calendar.DTO.Calendar;

/**
 * 게시판 기능 - 비즈니스 로직 클래스
 */
public class CalendarServiceImpl implements CalendarService {

	private CalendarDAO calendarDAO = new CalendarDAO();

	@Override
	public List<Calendar> list() {
		List<Calendar> calList = calendarDAO.list();
		// 2. 게시글 목록 데이터 가공
		// pass

		// 3. 게시글 목록 반환
		return calList;
	}

	@Override
	public Calendar select(int no) {
		Calendar cal = calendarDAO.select(no);

		// 2. 게시글 정보 반환
		return cal;
	}

	@Override
	public int insert(Calendar cal) {
		// 1. 게시글 정보를 전달하여 게시글 데이터 등록 요청
		int result = calendarDAO.insert(cal);

		// 2. 적용된 데이터 건수를 반환
		// - 결과 : 0 --> 데이터 등록 실패
		// 1 --> 데이터 등록 성공
		// * 비즈니스 로직 예시 - if( result > 0 ) 포인트 추가
		return result;
	}

	@Override
	public int update(Calendar cal) {
		// 1. 게시글 정보를 전달하여 게시글 데이터 수정 요청
		int result = calendarDAO.update(cal);
		// 2. 적용된 데이터 건수를 반환
		// - 결과 : 0 --> 데이터 수정 실패
		// 1 --> 데이터 수정 성공
		return result;
	}
	
	@Override
	public int delete(int no) {
		// 1. 게시글 번호를 전달하여 게시글 데이터 삭제 요청
		int result = calendarDAO.delete(no);
		// 2. 적용된 데이터 건수를 반환
		// - 결과 : 0 --> 데이터 삭제 실패
		// 1 --> 데이터 삭제 성공
		return result;
	}

	@Override
	public List<Calendar> listByYearMonth(String year, String month) {
		List<Calendar> calList = calendarDAO.listByYearMonth(year, month);
		return calList;
	}
}