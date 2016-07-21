package work;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;

public class Common {

		/**
		 * 获取系统当前时间
		 * 返回的是毫秒数，需自己转换
		 * */
		public static JSONObject getSysDateTime(JSONObject params, ActionContext context) throws SQLException, NamingException {
			JSONObject json  = new JSONObject();
			Date date = new Date();
			json.put("time",date);
			return json;
		}
		/**
		 * 获取系统当前时间字符串
		 * 需传入字符串格式 如："yyyy-MM-dd HH:mm:ss"
		 * 	  y 年
			  M 月
			  d 日
			  h 时 在上午或下午 (1~12)
			  H 时 在一天中 (0~23)
			  m 分
			  s 秒
			  S 毫秒
			  E 星期
			  D 一年中的第几天
			  F 一月中第几个星期几
			  w 一年中第几个星期
			  W 一月中第几个星期
			  a 上午 / 下午 标记符 
			  k 时 在一天中 (1~24)
			  K 时 在上午或下午 (0~11)
			  z 时区
		 * 1.dateStr -- 参数名
		 * */
		public static JSONObject getSysDateFormat(JSONObject params, ActionContext context) throws SQLException, NamingException {
			JSONObject json  = new JSONObject();
			String dateStr = params.getString("dateStr");
			SimpleDateFormat sdf  = new SimpleDateFormat(dateStr);
			json.put("time",sdf.format(new Date()));
			return json;
		}
		
//		获取服务器端地址（http://IP:端口号）
		public static JSONObject getSysAddress(JSONObject params, ActionContext context) {
			JSONObject json  = new JSONObject();
			HttpServletRequest request = (HttpServletRequest)context.get(ActionContext.REQUEST);
			String httpAddr = "";
			InetAddress addr;
			String ip="";
			try {
				addr = InetAddress.getLocalHost();
				ip = addr.getHostAddress().toString();//获得本机IP
			} catch (UnknownHostException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			httpAddr = request.getScheme()+"://"+ip+":"+request.getServerPort();
			json.put("server", httpAddr);
			return json;
		}
}
