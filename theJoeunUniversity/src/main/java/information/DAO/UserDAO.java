package information.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import information.DTO.Course;
import information.DTO.Department;
import information.DTO.Score;
import information.DTO.Users;

public class UserDAO extends JDBConnection {

	// 데이터 목록
	public Users Transcript(Users users) {
		List<Score> scoreList = new ArrayList<>();
		List<Course> courseList = new ArrayList<>();
		Users user = new Users();
		// 게시글 목록을 담을 컬렉션 객체 생성

		// SQL 작성
		String sql = " SELECT sc.*, c.Subject_name, u.* " + " FROM Score sc "
				+ " JOIN Course c ON sc.Coursecode = c.Coursecode " + " JOIN Users u ON sc.uNo = u.uNo "
				+ " WHERE u.StudentID = ? ";
		try {
			psmt = con.prepareStatement(sql); // PreparedStatement 초기화
			// psmt.setXXX( 순서번호, 매핑할 값 );
			psmt.setString(1, users.getStudentId()); // ?(1) <-- no (글번호)

			// 쿼리(SQL) 실행 -> 결과 - ResultSet (rs)
			rs = psmt.executeQuery();

			// 조회 결과를 리스트(boardList)에 추가
			while (rs.next()) { // next() : 실행 결과의 다음 데이터로 이동

				// 결과 데이터 가져오기
				// rs.getXXX("컬럼명") --> 해당 컬럼의 데이터를 가져온다
				// * "컬럼명"의 값을 특정 타입으로 변환
				user.setNo(rs.getInt("uNo"));
				user.setStudentId(rs.getString("StudentID"));
				user.setName(rs.getString("Name"));
				user.setBirth(rs.getString("Birth"));
				user.setMail(rs.getString("Mail"));
				user.setAcademicStatus(rs.getString("AcademicStatus"));
				user.setdNo(rs.getInt("dNo"));

				Score score = new Score();
				score.setSubjectScore(rs.getString("subjectScore"));
				score.setInputDate(rs.getDate("input_date"));
				score.setUpdDate(rs.getDate("upd_date"));
				score.setType(rs.getString("type"));
				score.setUNo(rs.getInt("uNo"));
				user.setScore(score);

				Course course = new Course();
				course.setCourseCode(rs.getString("courseCode"));
				course.setSubjectName(rs.getString("subject_name"));
				user.setCourse(course);

				scoreList.add(score);
				courseList.add(course);
				user.setScoreList(scoreList);
				user.setCourseList(courseList);

			}
		} catch (SQLException e) {
			System.err.println("게시글 목록 조회 시, 예외 발생");
			e.printStackTrace();
		}
		// 게시글 목록 반환
		return user;
	}

	public Users Certificate(Users user) {

		// SQL 작성
		String sql = " SELECT u.*, d.Majorname, c.Subject_name " 
					+ " FROM Users u "
					+ " JOIN Department d ON u.dNo = d.dNo "
					+ " JOIN Course c ON u.dNo = c.dNo "
					+ " WHERE u.StudentID = ?";
		try {
			// 쿼리(SQL) 실행 객체 생성 - Statement (stmt)
			psmt = con.prepareStatement(sql);

			// psmt.setXXX( 순서번호, 매핑할 값 );
			psmt.setString(1, user.getStudentId()); // ?(1) <-- no (글번호)

			// 쿼리(SQL) 실행 -> 결과 - ResultSet (rs)
			rs = psmt.executeQuery();

			// 조회 결과를 리스트(boardList)에 추가
			while (rs.next()) { // next() : 실행 결과의 다음 데이터로 이동

				// 결과 데이터 가져오기
				// rs.getXXX("컬럼명") --> 해당 컬럼의 데이터를 가져온다
				// * "컬럼명"의 값을 특정 타입으로 변환
				user.setNo(rs.getInt("UNO"));
				user.setStudentId(rs.getString("StudentID"));
				user.setName(rs.getString("Name"));
				user.setBirth(rs.getString("Birth"));
				user.setMail(rs.getString("Mail"));
				user.setAcademicStatus(rs.getString("AcademicStatus"));
				user.setdNo(rs.getInt("dNo"));

				
			    
				// 사용자 객체에 부서 정보 설정
	            Department department = new Department();
	            department.setMajorName(rs.getString("Majorname"));
	            user.setDepartment(department);

	            // 사용자 객체에 강의 정보 설정
	            Course course = new Course();
	            course.setSubjectName(rs.getString("Subject_name"));
	            user.setCourse(course);
				
	            
	            System.out.println("부서 정보: " + user.getDepartment().getMajorName());
	            System.out.println("강의 정보: " + user.getCourse().getSubjectName());
			}
		} catch (SQLException e) {
			System.err.println("게시글 목록 조회 시, 예외 발생");
			e.printStackTrace();
		}
		// 게시글 목록 반환
		return user;
	}

	/**
	 * 로그인
	 * 
	 * @param user
	 * @return
	 */
	public Users login(Users user) {

		System.out.println("로그인");
		// SQL 작성
		String sql = " SELECT * " + " FROM USERS " + " WHERE STUDENTID = ? and BIRTH = ? ";
		try {
			// 쿼리(SQL) 실행 객체 생성 - PreparedStatement (psmt)
			psmt = con.prepareStatement(sql);

			// psmt.setXXX( 순서번호, 매핑할 값 );
			psmt.setString(1, user.getStudentId());
			psmt.setString(2, user.getBirth());

			// 쿼리(SQL) 실행 -> 결과 - ResultSet (rs)
			rs = psmt.executeQuery();

			// 조회 결과를 1건 가져오기
			if (rs.next()) { // next() : 실행 결과의 다음 데이터로 이동
				user.setNo(rs.getInt("uNo"));
				user.setStudentId(rs.getString("StudentID"));
				user.setName(rs.getString("Name"));
				user.setBirth(rs.getString("Birth"));
				user.setMail(rs.getString("Mail"));
				user.setAcademicStatus(rs.getString("AcademicStatus"));
				user.setdNo(rs.getInt("dNo"));
				return user; // 로그인 성공
			}
			return null;
		} catch (SQLException e) {
			System.err.println("로그인 시, 예외 발생");
			e.printStackTrace();
		}
		return null;
	}

}
