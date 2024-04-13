package Calendar.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import Calendar.DTO.Calendar;
import Calendar.Service.CalendarService;
import Calendar.Service.CalendarServiceImpl;

@WebServlet("/calendar")
public class CalendarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CalendarService calendarService;
       
    public CalendarServlet() {
        super();
        calendarService = new CalendarServiceImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		
		System.out.println("year : " + year);
		System.out.println("month : " + month);
		
		List<Calendar> calendarList = null;
		if( (year == null || year.equals("")) || (month == null || month.equals("")) ) {
			calendarList = calendarService.list();
		}
		else {
			calendarList = calendarService.listByYearMonth(year, month);
		}
		
		PrintWriter writer = response.getWriter();
		if( calendarList == null ) {
			writer.print("NO DATA");
			return;
		}
		
		
		
		
		List<Map<?,?>> list = new ArrayList<Map<?,?>>();
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		for (Calendar cal : calendarList) {
			Map<String, String> calMap = new HashMap<String, String>();
			calMap.put("no", cal.getNo()+"");
			calMap.put("strDate", sdf.format( cal.getStrDate() ));
			calMap.put("endDate", sdf.format( cal.getEndDate() ));
			calMap.put("content", cal.getContent());
			
			list.add(calMap);
		}
		
		Map<String, List<?>> map = new HashMap<String, List<?>>();
		map.put("dates", list);
		

		// [Calendar(), Calendar(), Calendar(), ...]
		// [{'no':1,'stdDate':0000,'endDate':0000,'content':'설명'},{'no':1,'stdDate':0000,'endDate':0000,'content':'설명'},...]
		
		
		// java List to JSON List
		JSONObject json = new JSONObject(map);
		
		response.setContentType("application/json");
		writer.print(json);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}