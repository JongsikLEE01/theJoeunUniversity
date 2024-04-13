package board.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import admin.DTO.Board;


/**
 *  데이터 접근 객체
 *  - 게시글 데이터 접근
 */
public class BoardDAO extends JDBConnection {
	
	// 데이터 목록
	public List<Board> list() {
		
		// 게시글 목록을 담을 컬렉션 객체 생성
		List<Board> boardList = new ArrayList<Board>();
		
		// SQL 작성
		String sql = " SELECT * "
				   + " FROM board ";
		
		try {
			// 쿼리(SQL) 실행 객체 생성 - Statement (stmt)
			stmt = con.createStatement();
			
			// 쿼리(SQL) 실행 -> 결과  - ResultSet (rs)
			rs = stmt.executeQuery(sql);
			
			// 조회 결과를 리스트(boardList)에 추가
			while( rs.next() ) {		// next() : 실행 결과의 다음 데이터로 이동
				Board board = new Board();
				
				// 결과 데이터 가져오기
				// rs.getXXX("컬럼명") --> 해당 컬럼의 데이터를 가져온다
				// * "컬럼명"의 값을 특정 타입으로 변환
				board.setNo( rs.getInt("no") );
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContent(rs.getString("content"));
				board.setReg_date(rs.getDate("reg_date"));
				board.setUpd_date(rs.getDate("upd_date"));
				board.setViews(rs.getInt("views"));
				board.setCheckstaus(rs.getInt("checkstaus"));
				
				// 게시글 목록에 추가
				boardList.add(board);
			}
		} catch(SQLException e) {
			System.err.println("공지사항 목록 조회 시, 예외 발생");
			e.printStackTrace();
		}
		// 게시글 목록 반환
		return boardList;
	}
	
	// 데이터 조회
	public Board select(int no) {
		
		// 게시글 정보 객체 생성
		Board board = new Board();
		
		// SQL 작성
		String sql = " SELECT * "
				   + " FROM board "
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
				board.setNo( rs.getInt("no") );
				board.setTitle( rs.getString("title") );
				board.setWriter( rs.getString("writer") );
				board.setContent( rs.getString("content") );
				board.setReg_date( rs.getTimestamp("reg_date") );
				board.setUpd_date( rs.getTimestamp("upd_date") );
				
			}
		} catch(SQLException e) {
			System.err.println("게시글 조회 시, 예외 발생");
			e.printStackTrace();
		}
		// 게시글 정보 1건 반환
		return board;
	}
	
	//검색 기능
	public List<Board> search(String title) {
			
			// 게시글 목록을 담을 컬렉션 객체 생성
			List<Board> boardList = new ArrayList<Board>();
			
			// SQL 작성
	         String sql = " SELECT * "
	                  + " FROM board WHERE title LIKE '%' || ? || '%'"
	                  + " ORDER BY NO DESC";   
	         
			try {
				// 쿼리(SQL) 실행 객체 생성 - Statement (stmt)
				psmt = con.prepareStatement(sql);
				psmt.setString(1, title);
				
				// 쿼리(SQL) 실행 -> 결과  - ResultSet (rs)
				rs = psmt.executeQuery();
				
				// 조회 결과를 리스트(boardList)에 추가
				while( rs.next() ) {		// next() : 실행 결과의 다음 데이터로 이동
					Board board = new Board();
					
					// 결과 데이터 가져오기
					// rs.getXXX("컬럼명") --> 해당 컬럼의 데이터를 가져온다
					// * "컬럼명"의 값을 특정 타입으로 변환
					board.setNo( rs.getInt("no") );
					board.setTitle(rs.getString("title"));
					board.setWriter(rs.getString("writer"));
					board.setContent(rs.getString("content"));
					board.setReg_date(rs.getDate("reg_date"));
					board.setUpd_date(rs.getDate("upd_date"));
					board.setViews(rs.getInt("views"));
					board.setCheckstaus(rs.getInt("checkstaus"));
					
					// 게시글 목록에 추가
					boardList.add(board);
				}
			} catch(SQLException e) {
				System.err.println("공지사항 목록 검색시, 예외 발생");
				e.printStackTrace();
			}
			// 게시글 목록 반환
			return boardList;
		}
		
	
}