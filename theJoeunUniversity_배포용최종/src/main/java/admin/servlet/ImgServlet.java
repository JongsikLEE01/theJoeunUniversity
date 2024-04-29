package admin.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.DTO.Userimg;
import admin.DTO.Users;
import admin.Service.UserService;
import admin.Service.UserServiceImpl;
import admin.Service.UserimgService;
import admin.Service.UserimgServiceImpl;


/**
 * Servlet implementation class ImgServlet
 */
@WebServlet("/img")
public class ImgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImgServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("id : " + request + "///////" + response );
		// 프로젝트 내 img 경로 가져오기
		ServletContext context = getServletContext();
		String imgPath = context.getRealPath("/static/img");

		// 유저 프로필
		UserService userService = new UserServiceImpl();
		UserimgService userimgService = new UserimgServiceImpl();
		int no = Integer.parseInt(request.getParameter("no"));
		Users user = userService.select(no);
		Userimg userimg = userimgService.select(no);
		String fileName = userimg.getFilename();
		
		// 업로드 경로
		String fileUploadPath = "/msa5t3/upload/img/";
//		String fileUploadPath = "C:/upload/img/";
		String file = fileUploadPath + fileName;
		
		// 상품 이미지가 없을 때, 기본 이미지로 응답
		if( file == null || file.equals("") ) {
			file = imgPath + "/no-image.jpg";
		}
		
		if( file.contains("static/img") ) {
			String rootPath = context.getRealPath("/");
			file = rootPath + "/" + file;
		}
		
		String ext = file.substring( file.lastIndexOf(".") + 1 ).toUpperCase();
		System.out.println("확장자 : " + ext);
		
		String mediaType = "image/jpeg";
		
		switch (ext) {
			case "JPG": 
			case "JPEG": mediaType = "image/jpeg"; break;
			case "PNG" : mediaType = "image/png"; break;
			case "GIF" : mediaType = "image/gif"; break;
			case "WEBP" : mediaType = "image/webp"; break;
		}
		
		response.setContentType( mediaType );		// 이미지 파일로 컨텐츠 타입 지정
		
        try (FileInputStream fis = new FileInputStream(file);
             OutputStream out = response.getOutputStream()) {
            byte[] buffer = new byte[1024];
            int data;
            
            while ((data = fis.read(buffer)) != -1) {
                out.write(buffer, 0, data);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}





