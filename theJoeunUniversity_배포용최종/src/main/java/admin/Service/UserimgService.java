package admin.Service;

import admin.DTO.Userimg;

public interface UserimgService {
	
	// 학생 사진 등록
	int insert(Userimg userimg);
	
	// 학생 사진 정보 조회
	Userimg select(int usernum);
	
	// 학생 사진 삭제
	int delete(int usernum);
}
