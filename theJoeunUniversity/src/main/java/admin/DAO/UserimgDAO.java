package admin.DAO;

import java.sql.SQLException;

import admin.DTO.Userimg;
import admin.DTO.Users;

public class UserimgDAO extends JDBConnection{

	public int insert(Userimg userimg) {
		int result = 0;		// 결과 : 적용된 데이터 건수
		
		String sql = " INSERT INTO userimg (no,filename,usernum) "
				   + " VALUES(SEQ_UIMG.nextval, ?, ?) ";
		
		try {
			psmt = con.prepareStatement(sql);			// 쿼리 실행 객체 생성
			psmt.setString( 1, userimg.getFilename() );		
			psmt.setInt( 2, userimg.getUsernum() );		
			result = psmt.executeUpdate();		// SQL 실행 요청, 적용된 데이터 개수를 받아온다.
												// 게시글 1개 적용 성공 시, result : 1
												// 				실패 시, result : 0
			// executeUpdate()
			// : SQL (INSERT, UPDATE, DELETE)을 실행하고 적용된 데이터 개수를 int 타입으로 반환
		} catch (SQLException e) {
			System.err.println("사진 등록 시, 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	
	// 데이터 조회
			public Userimg select(int usernum) {
				
				System.out.println("뭘가져왔니" +  usernum);
				// 게시글 정보 객체 생성
				Userimg userimg = new Userimg();
				
				// SQL 작성
				String sql = " SELECT * "
						   + " FROM userimg "
						   + " WHERE usernum = ? ";
				try {
					// 쿼리(SQL) 실행 객체 생성 - PreparedStatement (psmt)
					psmt = con.prepareStatement(sql);
					
					// psmt.setXXX( 순서번호, 매핑할 값 );
					psmt.setInt( 1, usernum );		// ?(1) <-- no (글번호)
					
					// 쿼리(SQL) 실행 -> 결과  - ResultSet (rs)
					rs = psmt.executeQuery();
					
					// 조회 결과를 1건 가져오기
					if( rs.next() ) {		// next() : 실행 결과의 다음 데이터로 이동
						// 결과 데이터 가져오기
						// rs.getXXX("컬럼명") --> 해당 컬럼의 데이터를 가져온다
						// * "컬럼명"의 값을 특정 타입으로 변환
						userimg.setFilename(rs.getString("filename"));
						userimg.setNo(rs.getInt("no"));
						userimg.setUsernum(rs.getInt("usernum"));
					}
				} catch(SQLException e) {
					System.err.println("게시글 조회 시, 예외 발생");
					e.printStackTrace();
				}
				// 게시글 정보 1건 반환
				return userimg;
			}
			
			// 데이터 삭제
			public int delete(int usernum) {
				int result = 0;		// 결과 : 적용된 데이터 건수
				
				String sql = " DELETE FROM userimg "
						   + " WHERE usernum = ? ";
				
				try {
					psmt = con.prepareStatement(sql);	// 쿼리 실행 객체 생성
					psmt.setInt( 1, usernum );				// 1번 ? 에 게시글 번호를 매핑
					
					result = psmt.executeUpdate();		// SQL 실행 요청, 적용된 데이터 개수를 받아온다.
														// 게시글 1개 적용 성공 시, result : 1
														// 				실패 시, result : 0
					// executeUpdate()
					// : SQL (INSERT, UPDATE, DELETE)을 실행하고 적용된 데이터 개수를 int 타입으로 반환
				} catch (SQLException e) {
					System.err.println("사진 삭제 시, 예외 발생");
					e.printStackTrace();
				}
				return result;
			}
			
}
