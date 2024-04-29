package information.Service;

import information.DTO.Users;

public interface UserService {
	
	
	// 로그인
	public Users login(Users user);
	
	// 졸업/재학 증명서
	public Users Certificate(Users user);
	
	// 성적 증명서
	public Users Transcript(Users user);
		
	

}
