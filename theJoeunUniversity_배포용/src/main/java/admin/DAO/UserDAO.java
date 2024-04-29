package admin.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import admin.DTO.Board;
import admin.DTO.PersistentLogins;
import admin.DTO.Users;

public class UserDAO extends JDBConnection {

	
	// 데이터 목록
		public List<Users> list() {
			
			// 게시글 목록을 담을 컬렉션 객체 생성
			List<Users> usersList = new ArrayList<Users>();
			
			// SQL 작성
			String sql = " SELECT * "
					   + " FROM Users ";
			try {
				// 쿼리(SQL) 실행 객체 생성 - Statement (stmt)
				stmt = con.createStatement();
				
				// 쿼리(SQL) 실행 -> 결과  - ResultSet (rs)
				rs = stmt.executeQuery(sql);
				
				// 조회 결과를 리스트(boardList)에 추가
				while( rs.next() ) {		// next() : 실행 결과의 다음 데이터로 이동
					Users user = new Users();
					
					// 결과 데이터 가져오기
					// rs.getXXX("컬럼명") --> 해당 컬럼의 데이터를 가져온다
					// * "컬럼명"의 값을 특정 타입으로 변환
					user.setUno( rs.getInt("uNo") );
					user.setStudentId( rs.getString("StudentID"));
					user.setName( rs.getString("Name") );
					user.setBirth( rs.getString("Birth") );
					user.setMail( rs.getString("Mail") );
					user.setAcademicStatus(rs.getString("AcademicStatus"));
					user.setdNo( rs.getInt("dNo") );
					
					// 게시글 목록에 추가
					usersList.add(user);
				}
			} catch(SQLException e) {
				System.err.println("학생 목록 조회 시, 예외 발생");
				e.printStackTrace();
			}
			// 게시글 목록 반환
			return usersList;
		}
		
	
	public int insert(Users user) {
		int result = 0;		// 결과 : 적용된 데이터 건수
		
		String sql = " INSERT INTO Users (StudentID,Name,Birth,Mail,AcademicStatus,dNo) "
				   + " VALUES(?, ?, ?, ?, ?, ?) ";
		
		try {
			psmt = con.prepareStatement(sql);			// 쿼리 실행 객체 생성
			psmt.setString( 1, user.getStudentId() );		
			psmt.setString( 2, user.getName() );		
			psmt.setString( 3, user.getBirth() );		
			psmt.setString( 4, user.getMail() );		
			psmt.setString( 5, user.getAcademicStatus() );		
			psmt.setInt( 6, user.getdNo() );		
			result = psmt.executeUpdate();		// SQL 실행 요청, 적용된 데이터 개수를 받아온다.
												// 게시글 1개 적용 성공 시, result : 1
												// 				실패 시, result : 0
			// executeUpdate()
			// : SQL (INSERT, UPDATE, DELETE)을 실행하고 적용된 데이터 개수를 int 타입으로 반환
		} catch (SQLException e) {
			System.err.println("회원 등록 시, 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	// 데이터 조회
		public Users select(int uno) {
			
			System.out.println("뭘가져왔니" +  uno);
			// 게시글 정보 객체 생성
			Users user = new Users();
			
			// SQL 작성
			String sql = " SELECT * "
					   + " FROM Users "
					   + " WHERE uNo = ? ";
			try {
				// 쿼리(SQL) 실행 객체 생성 - PreparedStatement (psmt)
				psmt = con.prepareStatement(sql);
				
				// psmt.setXXX( 순서번호, 매핑할 값 );
				psmt.setInt( 1, uno );		// ?(1) <-- no (글번호)
				
				// 쿼리(SQL) 실행 -> 결과  - ResultSet (rs)
				rs = psmt.executeQuery();
				
				// 조회 결과를 1건 가져오기
				if( rs.next() ) {		// next() : 실행 결과의 다음 데이터로 이동
					// 결과 데이터 가져오기
					// rs.getXXX("컬럼명") --> 해당 컬럼의 데이터를 가져온다
					// * "컬럼명"의 값을 특정 타입으로 변환
					user.setUno( rs.getInt("uNo") );
					user.setStudentId( rs.getString("StudentID") );
					user.setName( rs.getString("Name") );
					user.setBirth( rs.getString("Birth") );
					user.setMail( rs.getString("Mail") );
					user.setAcademicStatus( rs.getString("AcademicStatus"));
					user.setdNo( rs.getInt("dNo") );
					
				}
			} catch(SQLException e) {
				System.err.println("게시글 조회 시, 예외 발생");
				e.printStackTrace();
			}
			// 게시글 정보 1건 반환
			return user;
		}
		
	// 데이터 수정
		public int update(Users user) {
			System.out.println("실행됨:" + user.getdNo());
			int result = 0;		// 결과 : 적용된 데이터 건수
			
			String sql = " UPDATE Users "
					   + " SET Name = ? "
					   + "   , StudentID = ? "
					   + "   , Birth = ? "
					   + "   , Mail = ? "
					   + "   , AcademicStatus = ? "
					   + "   , dNo = ? "
					   + " WHERE uNo = ? ";
			
			try {
				psmt = con.prepareStatement(sql);			
				psmt.setString( 1, user.getName() );		
				psmt.setString( 2, user.getStudentId() );		
				psmt.setString( 3, user.getBirth() );		
				psmt.setString( 4, user.getMail() );		
				psmt.setString( 5, user.getAcademicStatus() );
				psmt.setInt( 6, user.getdNo() );
				psmt.setInt( 7, user.getUno() );			
				
				result = psmt.executeUpdate();		// SQL 실행 요청, 적용된 데이터 개수를 받아온다.
													// 게시글 1개 적용 성공 시, result : 1
													// 				실패 시, result : 0
				// executeUpdate()
				// : SQL (INSERT, UPDATE, DELETE)을 실행하고 적용된 데이터 개수를 int 타입으로 반환
			} catch (SQLException e) {
				System.err.println("게시글 수정 시, 예외 발생");
				e.printStackTrace();
			}
			return result;
		}
		
		// 데이터 삭제
		public int delete(int uno) {
			int result = 0;		// 결과 : 적용된 데이터 건수
			
			String sql = " DELETE FROM Users "
					   + " WHERE uNo = ? ";
			
			try {
				psmt = con.prepareStatement(sql);	// 쿼리 실행 객체 생성
				psmt.setInt( 1, uno );				// 1번 ? 에 게시글 번호를 매핑
				
				result = psmt.executeUpdate();		// SQL 실행 요청, 적용된 데이터 개수를 받아온다.
													// 게시글 1개 적용 성공 시, result : 1
													// 				실패 시, result : 0
				// executeUpdate()
				// : SQL (INSERT, UPDATE, DELETE)을 실행하고 적용된 데이터 개수를 int 타입으로 반환
			} catch (SQLException e) {
				System.err.println("게시글 삭제 시, 예외 발생");
				e.printStackTrace();
			}
			return result;
		}
	
}






