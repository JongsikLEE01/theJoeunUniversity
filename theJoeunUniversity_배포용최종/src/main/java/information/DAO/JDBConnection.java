package information.DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBConnection {
	
	public Connection con;				// 연결된 드라이버에 SQL을 요청할 객체를 생성하는 클래스
	public Statement stmt;				// SQL 실행 요청을 하는 클래스
	public PreparedStatement psmt;		// Statement 에서 ? 파라미터 확장기능을 추가로 제공하는 클래스
	public ResultSet rs;				// SQL 실행 결과를 받아오는 클래스
	
	// 기본 생성자
	public JDBConnection() {
		try {
			// ojdbc8.jar 드라이버의 클래스를 로드한다.
			Class.forName("com.mysql.jdbc.Driver");
//			String url = "jdbc:mysql://210.114.6.196:3306/msa5t3?serverTimezone=Asia/Seoul&allowPublicKeyRetrieval=true&useSSL=false";
			String url = "jdbc:mysql://127.0.0.1:3306/msa5t3?serverTimezone=Asia/Seoul&allowPublicKeyRetrieval=true&useSSL=false";
			String id = "msa5t3";
			String pw = "msa50303!";
			
			// 자바 프로그램에서 JDBC 드라이버를 연결시켜주는 클래스
			// getConnection() 메소드로 DB에 연결 요청하고 생성된 Connection 객체를 반환받는다.
			con = DriverManager.getConnection(url, id, pw);
			
			System.out.println("DB 연결 성공");
		} catch (Exception e) {
			System.err.println("DB 연결 실패");
			e.printStackTrace();
		}
		
	}
}







