package admin.Service;

import java.util.List;

import admin.DTO.Calendar;


public interface CalendarService {

	
	// 일정목록조회
	List<Calendar> list();
	// 일정등록
	int insert(Calendar calendar);
	
	// 일정조회
	Calendar select(int no);
	
	// 일정수정
	int update (Calendar calendar);
	
	// 일정삭제
	int delete(int no);
	
	
	
}
