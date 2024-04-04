package admin.Service;

import java.util.List;

import admin.DAO.UserDAO;
import admin.DTO.Board;
import admin.DTO.PersistentLogins;
import admin.DTO.Users;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO = new UserDAO();
	
	
	//============ 키오스크 시스템
	
	
	@Override
	public List<Users> list() {
		// 1. DAO 객체에 게시글 목록 요청
				List<Users> usersList = userDAO.list();
				// 2. 게시글 목록 데이터 가공
				// pass
				
				// 3. 게시글 목록 반환
				return usersList;
	}

	@Override
	public Users select(int no) {
		// 1. 게시글 번호에 대한 게시글 정보 데이터 요청
		Users user = userDAO.select(no);
		
		// 2. 게시글 정보 반환
		return user;
	}

	@Override
	public int insert(Users user) {
		// 1. 게시글 정보를 전달하여 게시글 데이터 등록 요청
		int result = userDAO.insert(user);
		
		// 2. 적용된 데이터 건수를 반환
		//   - 결과 : 0 --> 데이터 등록 실패
		//           1 --> 데이터 등록 성공
		// * 비즈니스 로직 예시 - if( result > 0 ) 포인트 추가
		return result;
	}

	@Override
	public int update(Users user) {
		// 1. 게시글 정보를 전달하여 게시글 데이터 수정 요청
			int result = userDAO.update(user);
			// 2. 적용된 데이터 건수를 반환
			//   - 결과 : 0 --> 데이터 수정 실패
			//           1 --> 데이터 수정 성공
			return result;
	}

	@Override
	public int delete(int no) {
		// 1. 게시글 번호를 전달하여 게시글 데이터 삭제 요청
		int result = userDAO.delete(no);
		// 2. 적용된 데이터 건수를 반환
		//   - 결과 : 0 --> 데이터 삭제 실패
		//           1 --> 데이터 삭제 성공
		return result;
	}

}


