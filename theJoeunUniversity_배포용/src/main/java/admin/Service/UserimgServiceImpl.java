package admin.Service;

import admin.DAO.UserimgDAO;
import admin.DTO.Userimg;

public class UserimgServiceImpl implements UserimgService{
	
	private UserimgDAO userimgDAO = new UserimgDAO();
	@Override
	public int insert(Userimg userimg) {
		
		int result = userimgDAO.insert(userimg);
		
		return result;
	}
	@Override
	public Userimg select(int usernum) {

		Userimg userimg = userimgDAO.select(usernum);
		
		return userimg;
	}
	@Override
	public int delete(int usernum) {
		
		int result = userimgDAO.delete(usernum);
		
		return result;
	}

}
