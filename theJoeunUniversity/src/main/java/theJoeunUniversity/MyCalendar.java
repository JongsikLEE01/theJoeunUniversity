package theJoeunUniversity;

public class MyCalendar {
	
	//	윤년 / 평년 판단
	public static boolean isLeapYear(int year) {
		return (year % 4 ==0) && (year % 100 !=0) ||(year % 400 ==0);
	}
	
	//	해당 달의 마지막 날 리턴
	public static int lastDay(int year ,int month ) {
		int[] m = {31,28,31,30,31,30,31,31,30,31,30,31};
		m[1]=isLeapYear(year)? 29:28;
		return m[month-1];
	}
	
	
	//	1년 1월 1일부터 지나온 날짜의 합계를 리턴하는 메서드	
	public static int totalDay(int year, int month, int day) {
		int sum = (year-1)*365 +(year-1)/4 - (year-1)/100 +(year-1)/400;
		for (int i = 1; i < month; i++) {
			sum += lastDay(year,i);
		}
		return sum + day;
	}
	
	//	요일을 숫자로 리턴
	public static int weekDay(int year, int month, int day) {
		return totalDay(year, month, day) % 7;
	}
}