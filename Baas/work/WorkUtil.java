package work;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @author Administrator
 *
 */
public class WorkUtil {
	public static Date getMonthEnd(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.MONTH, 1);
		int index = calendar.get(Calendar.DAY_OF_MONTH);
		calendar.add(Calendar.DATE, (-index));
		return calendar.getTime();
	}
	
	/**
	 * @author Administrator
	 *	format = "yyyy-MM-dd"
	 *	format = "yyyy-MM-dd HH:mm:ss"
	 */
	public static String getDateFormat(Date date, String format) {
		String strDateTime = "";
		DateFormat df = new SimpleDateFormat(format);
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		strDateTime = df.format(date);
		return strDateTime;
	}

	public static long getDateDiff(String startTime, String endTime) {
		long diff = 0;
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date d1 = df.parse(startTime);
			Date d2 = df.parse(endTime);
			diff = d2.getTime() - d1.getTime();
		} catch (Exception e) {
		}
		return diff;
	}

	public static Date getNextDay(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DATE, 1);
		return calendar.getTime();
	}
	
	public static boolean isMysql(Connection conn) {
		try {
			return conn.getMetaData().getDatabaseProductName().toLowerCase().indexOf("mysql") != -1;
		} catch (SQLException e) {
			String msg = "判断数据库类型失败！";
			throw new com.justep.baas.data.sql.SQLException(msg,e);
		}
	}

	public static boolean isOracle(Connection conn) {
		try {
			return conn.getMetaData().getDatabaseProductName().toLowerCase().indexOf("oracle") != -1;
		} catch (SQLException e) {
			String msg = "判断数据库类型失败！";
			throw new com.justep.baas.data.sql.SQLException(msg,e);
		}
	}
}
