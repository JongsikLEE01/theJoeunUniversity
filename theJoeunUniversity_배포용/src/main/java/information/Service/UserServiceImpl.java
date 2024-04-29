package information.Service;

import information.DAO.UserDAO;
import information.DTO.Users;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO = new UserDAO();

	
	
	@Override
	public Users login(Users user) {
		Users loginUser = userDAO.login(user);
		
		// 로그인 성공
		if (user != null) {
			System.out.println("로그인 성공!");
			return loginUser;
		} else {
			System.out.println("로그인 실패!");
		}	
		
		return null;
	}



	@Override
	public Users Certificate(Users user) {
		Users searchStudentID = userDAO.Certificate(user);
		
		if (user != null) {
			System.out.println("증명서 발행 성공!");
			return searchStudentID;
		} else {
			System.out.println("증명서 발행 실패!");
		}	
		return null;
	}



	@Override
	public Users Transcript(Users user) {
		Users searchStudentID = userDAO.Transcript(user);
		
		if (user != null) {
			System.out.println("증명서 발행 성공!");
			return searchStudentID;
		} else {
			System.out.println("증명서 발행 실패!");
		}	
		
		return null;
	}




	

}



















