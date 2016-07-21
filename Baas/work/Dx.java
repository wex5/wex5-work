package work;
//package justep;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.naming.NamingException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.Utils;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Table;
import com.justep.baas.data.Transform;

public class Dx {
    private static final String DATASOURCE_TAKEOUT = "takeout";

	public static JSONObject DuanXinCheck(JSONObject params, ActionContext context) throws SQLException, NamingException, IOException {
		HttpServletRequest request = (HttpServletRequest)context.get(ActionContext.REQUEST);
//		request.getSession();
//		boolean flag = false;
		String fPhoneNumber = params.getString("fPhoneNumber");
		//生成6位数字的随机字符串
		int suiji = new Random().nextInt(899999) + 100000;
		String backStr = Integer.toString(suiji);
		// 将随机字符串通过jsonOBJ返回前台 
		JSONObject jsonObj = new JSONObject();
		//       System.out.println("backStr==="+backStr);
//		jsonObj.put("CheckCode", backStr);
//		DataUtils.writeJsonToResponse((ServletResponse)(context.get(ActionContext.RESPONSE)), jsonObj);

		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");
		post.addRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=gbk");
		//在头文件中设置转码
		NameValuePair[] data = { new NameValuePair("Uid", "justep"), new NameValuePair("Key", "5280d1eac8b167c419fb"),
				new NameValuePair("smsMob", fPhoneNumber), new NameValuePair("smsText", "验证码：" + backStr + " (本信息由系统自动发出，不要回复）") };

		//这段Java代码是直接从他家demo拷贝下来的，只需要修改这句话，填写你在他家注册的用户名、短信密钥，参数中加要发送的手机号和验证码短信
		post.setRequestBody(data);
		try {
			client.executeMethod(post);
			Header[] headers = post.getResponseHeaders();
			int statusCode = post.getStatusCode();
			System.out.println("状态码:" + statusCode);
			for (Header h : headers) {
				System.out.println(h.toString());
			}
			String result = new String(post.getResponseBodyAsString().getBytes("gbk"));
			if(Integer.parseInt(result)> 0){
				request.getSession().setAttribute(fPhoneNumber, backStr);
				request.getSession().setAttribute(fPhoneNumber+"Time", WorkUtil.getDateFormat(new Date(),"yyyy-MM-dd HH:mm:ss"));
//				flag = true;
			}else{
				backStr = "";
			}
			
			System.out.println(result); //打印返回消息状态

		} finally {
			post.releaseConnection();

		}
		jsonObj.put("backStr", backStr);
		return jsonObj;
	}

	public static JSONObject login(JSONObject params, ActionContext context) throws SQLException, NamingException, IOException {
		// 获取参数
		Object columns = params.get("columns");
		Integer limit = params.getInteger("limit");
		Integer offset = params.getInteger("offset");
		String search = params.getString("search");
		
		String fPhoneNumber = params.getString("fPhoneNumber");
		String fPassWord = params.getString("fPassWord");
//        System.out.println("fPhoneNumber="+fPhoneNumber+"#fPassWord="+fPassWord);

        

		List<Object> sqlParams = new ArrayList<Object>();
		// 构造过滤条件
		List<String> filters = new ArrayList<String>();
		if (!Utils.isEmptyString(search)) {
			filters.add(" fPhoneNumber = ? OR fPassWord = ? ");
			// 多个问号参数的值
			search = (search.indexOf("%") != -1) ? search : "%" + search + "%";
			for (int i = 0; i < 2; i++) {
				sqlParams.add(search);
			}
		}

		sqlParams.add(fPhoneNumber);
		sqlParams.add(fPassWord);
		
		Table table = null;
		Connection conn = context.getConnection(DATASOURCE_TAKEOUT);

		String querysql = "select * from user_info u where u.fPhoneNumber=? and u.fPassWord=?";
		 
		try {
			table = DataUtils.queryData(conn, querysql, sqlParams, columns, offset, limit);
			return Transform.tableToJson(table);

//			System.out.println("jsonObj==="+Transform.tableToJson(table));	
			
		} finally {
			conn.close();
		}
	}

}
