package admin.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import admin.DTO.Calendar;
import admin.DTO.Users;

public class CalendarDAO extends JDBConnection {

	
	// 데이터 목록
		public List<Calendar> list() {
			
			// 게시글 목록을 담을 컬렉션 객체 생성
			List<Calendar> calendarList = new ArrayList<Calendar>();
			
			// SQL 작성
			String sql = " SELECT * "
					   + " FROM calendar ";
			try {
				// 쿼리(SQL) 실행 객체 생성 - Statement (stmt)
				stmt = con.createStatement();
				
				// 쿼리(SQL) 실행 -> 결과  - ResultSet (rs)
				rs = stmt.executeQuery(sql);
				
				// 조회 결과를 리스트(calendar)에 추가
				while( rs.next() ) {		// next() : 실행 결과의 다음 데이터로 이동
					Calendar calendar = new Calendar();
					
					// 결과 데이터 가져오기
					// rs.getXXX("컬럼명") --> 해당 컬럼의 데이터를 가져온다
					// * "컬럼명"의 값을 특정 타입으로 변환
					calendar.setNo( rs.getInt("no") );
					calendar.setStrDate( rs.getDate("strdate") );
					calendar.setEndDate( rs.getDate("enddate") );
					calendar.setContent( rs.getString("content") );
					
					
					// 게시글 목록에 추가
					calendarList.add(calendar);
				}
			} catch(SQLException e) {
				System.err.println("일정 목록 조회시, 예외 발생");
				e.printStackTrace();
			}
			// 게시글 목록 반환
			return calendarList;
		}
		
	
	public int insert(Calendar calendar) {
		int result = 0;		// 결과 : 적용된 데이터 건수
		
		String sql = " INSERT INTO calendar (no,strdate,enddate,content) "
				   + " VALUES(SEQ_CAL.nextval, ?, ?, ?) ";
		
		try {
			psmt = con.prepareStatement(sql);			// 쿼리 실행 객체 생성
						
			psmt.setDate( 1, new java.sql.Date( calendar.getStrDate().getTime() ) );				
			psmt.setDate( 2, new java.sql.Date( calendar.getEndDate().getTime() ) );				
			psmt.setString( 3, calendar.getContent() );				
			result = psmt.executeUpdate();		// SQL 실행 요청, 적용된 데이터 개수를 받아온다.
												// 게시글 1개 적용 성공 시, result : 1
												// 				실패 시, result : 0
			// executeUpdate()
			// : SQL (INSERT, UPDATE, DELETE)을 실행하고 적용된 데이터 개수를 int 타입으로 반환
		} catch (SQLException e) {
			System.err.println("일정 등록시, 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	// 데이터 조회
			public Calendar select(int no) {
				
				// 게시글 정보 객체 생성
				Calendar calendar = new Calendar();
				
				// SQL 작성
				String sql = " SELECT * "
						   + " FROM calendar "
						   + " WHERE no = ? ";
				try {
					// 쿼리(SQL) 실행 객체 생성 - PreparedStatement (psmt)
					psmt = con.prepareStatement(sql);
					
					// psmt.setXXX( 순서번호, 매핑할 값 );
					psmt.setInt( 1, no );		// ?(1) <-- no (글번호)
					
					// 쿼리(SQL) 실행 -> 결과  - ResultSet (rs)
					rs = psmt.executeQuery();
					
					// 조회 결과를 1건 가져오기
					if( rs.next() ) {		// next() : 실행 결과의 다음 데이터로 이동
						// 결과 데이터 가져오기
						// rs.getXXX("컬럼명") --> 해당 컬럼의 데이터를 가져온다
						// * "컬럼명"의 값을 특정 타입으로 변환
						calendar.setStrDate( rs.getDate("strdate") );
						calendar.setEndDate( rs.getDate("enddate") );
						calendar.setContent( rs.getString("content") );
						
					}
				} catch(SQLException e) {
					System.err.println("일정 조회 시, 예외 발생");
					e.printStackTrace();
				}
				// 게시글 정보 1건 반환
				return calendar;
			}
			
			// 데이터 수정
			public int update(Calendar calendar) {
				int result = 0;		// 결과 : 적용된 데이터 건수
				
				String sql = " UPDATE CALENDAR "
						   + " SET STRDATE = ? "
						   + "   , ENDDATE = ? "
						   + "   , CONTENT = ? "
						   + " WHERE NO = ? ";
				
				try {
					psmt = con.prepareStatement(sql);			
					psmt.setDate( 1, new java.sql.Date( calendar.getStrDate().getTime() ) );				
					psmt.setDate( 2, new java.sql.Date( calendar.getEndDate().getTime() ) );				
					psmt.setString( 3, calendar.getContent() );
					psmt.setInt(4, calendar.getNo());
					
					result = psmt.executeUpdate();		// SQL 실행 요청, 적용된 데이터 개수를 받아온다.
														// 게시글 1개 적용 성공 시, result : 1
														// 				실패 시, result : 0
					// executeUpdate()
					// : SQL (INSERT, UPDATE, DELETE)을 실행하고 적용된 데이터 개수를 int 타입으로 반환
				} catch (SQLException e) {
					System.err.println("일정 수정 시, 예외 발생");
					e.printStackTrace();
				}
				return result;
			}
			
			// 데이터 삭제
			public int delete(int no) {
				int result = 0;		// 결과 : 적용된 데이터 건수
				
				String sql = " DELETE FROM calendar "
						   + " WHERE no = ? ";
				
				try {
					psmt = con.prepareStatement(sql);	// 쿼리 실행 객체 생성
					psmt.setInt( 1, no );				// 1번 ? 에 게시글 번호를 매핑
					
					result = psmt.executeUpdate();		// SQL 실행 요청, 적용된 데이터 개수를 받아온다.
														// 게시글 1개 적용 성공 시, result : 1
														// 				실패 시, result : 0
					// executeUpdate()
					// : SQL (INSERT, UPDATE, DELETE)을 실행하고 적용된 데이터 개수를 int 타입으로 반환
				} catch (SQLException e) {
					System.err.println("일정 삭제 시, 예외 발생");
					e.printStackTrace();
				}
				return result;
			}
	
}






