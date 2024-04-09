package admin.Service;

import java.util.List;

import admin.DTO.PersistentLogins;
import admin.DTO.Users;

public interface UserService {
	
	// 학생 목록
	List<Users> list();
	// 학생 조회
	Users select(int no);
	// 학생 등록
	int insert(Users user);
	// 학생 수정
	int update(Users user);
	// 학생 삭제
	int delete(int no);
	
	
}
