package admin.Service;

import java.util.List;

import admin.DAO.CalendarDAO;
import admin.DTO.Calendar;
import admin.DTO.Users;

public class CalendarServiceImpl implements CalendarService {

	private CalendarDAO calendarDAO = new CalendarDAO();
	
	@Override
	public List<Calendar> list() {
		// 1. DAO 객체에 게시글 목록 요청
				List<Calendar> calendarList = calendarDAO.list();
				// 2. 게시글 목록 데이터 가공
				// pass
				
				// 3. 게시글 목록 반환
				return calendarList;
	}

	@Override
	public int insert(Calendar calendar) {
		// 1. 게시글 정보를 전달하여 게시글 데이터 등록 요청
			int result = calendarDAO.insert(calendar);
			
			// 2. 적용된 데이터 건수를 반환
			//   - 결과 : 0 --> 데이터 등록 실패
			//           1 --> 데이터 등록 성공
			// * 비즈니스 로직 예시 - if( result > 0 ) 포인트 추가
			return result;
	}

	@Override
	public Calendar select(int no) {
		// 1. 게시글 번호에 대한 게시글 정보 데이터 요청
			Calendar user = calendarDAO.select(no);
			
			// 2. 게시글 정보 반환
			return user;
	}

	@Override
	public int update(Calendar calendar) {
		// 1. 게시글 정보를 전달하여 게시글 데이터 수정 요청
			int result = calendarDAO.update(calendar);
			// 2. 적용된 데이터 건수를 반환
			//   - 결과 : 0 --> 데이터 수정 실패
			//           1 --> 데이터 수정 성공
			return result;
	}

	@Override
	public int delete(int no) {
		// 1. 게시글 번호를 전달하여 게시글 데이터 삭제 요청
			int result = calendarDAO.delete(no);
			// 2. 적용된 데이터 건수를 반환
			//   - 결과 : 0 --> 데이터 삭제 실패
			//           1 --> 데이터 삭제 성공
			return result;
	}

}
