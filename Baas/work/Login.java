package work;

import java.sql.SQLException;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;

public class Login {
	private static final String DATASOURCE_X5SYS= "system";

	public static JSONObject login(JSONObject params, ActionContext context) throws SQLException, NamingException {
		String userName = params.getString("userName");
		String password = params.getString("password");
		Boolean flag = false;
		String personID = null;
		String personName = null;
		String message = null;
		String sfunRole = "";
		Boolean isInOrg = false;
		JSONObject ret = new JSONObject();
		JSONObject p = new JSONObject();
		if(userName == null){
			ret.put("flag", flag);
			message = "登录名不能为空";
			ret.put("message", message);
		}else{			
			p.put("db", DATASOURCE_X5SYS);
			p.put("tableName", "sa_opperson");
			p.put("limit", -1);
			p.put("columns", "sID,sName,sFunRole");
			p.put("condition", "SLOGINNAME = :userName AND SPASSWORD = :password");
			JSONObject variables = new JSONObject();
			p.put("variables", variables);
			variables.put("userName", userName);
			variables.put("password", password);
			JSONObject t = com.justep.baas.action.CRUD.query(p, context);
			JSONArray rows = t.getJSONArray("rows");
			if (rows.size() > 0) {
				flag = true;
				JSONObject row = rows.getJSONObject(0);
				personID = row.getJSONObject("sID").getString("value");
				personName = row.getJSONObject("sName").getString("value");
				sfunRole = row.getJSONObject("sFunRole").getString("value");
				ret.put("flag", flag);
				ret.put("personName", personName);
				ret.put("personID", personID);
				ret.put("message", message);
				ret.put("CurrentFunRole", sfunRole);
				
				JSONArray rowsOrg =  orgInfo(personID, context);
				isInOrg = petOrgInfo(ret, rowsOrg);
				
				ret.put("isInOrg", isInOrg);
				
			}else{
				ret.put("flag", flag);
				message = "登录名或密码错误";
				ret.put("message", message);
			}
		}
		return ret;
	}

	public static JSONObject CrrentOrgInfo(JSONObject params, ActionContext context) throws SQLException, NamingException {
		
		JSONObject ret = new JSONObject();
		boolean flag = false;
		String personID = params.getString("personID");
		JSONArray rowsOrg =  orgInfo(personID, context);
		flag = petOrgInfo(ret, rowsOrg);
		ret.put("flag", flag);
		return ret;
	}
	
	private static JSONArray orgInfo(String personID, ActionContext context) throws SQLException, NamingException {
		JSONObject p = new JSONObject();
		p.put("db", DATASOURCE_X5SYS);
		p.put("tableName", "sa_oporg");
		p.put("limit", -1);
		p.put("columns", "sFName,sFID");
//		后续需加入主组织ID的条件筛选
		p.put("condition", "SPERSONID = :personID");
		p.put("orderBy", "sName asc");
		JSONObject variables = new JSONObject();
		p.put("variables", variables);
		variables.put("personID", personID);
		JSONObject t = com.justep.baas.action.CRUD.query(p, context);
		JSONArray rows = t.getJSONArray("rows");

		return rows;
	}
	
	private static boolean petOrgInfo(JSONObject result,JSONArray rowsOrg) {
		JSONObject org = rowsOrg.getJSONObject(0);
		boolean flag = false;
		if(rowsOrg.size()>0){
			String strFID = org.getJSONObject("sFID")==null?"":org.getJSONObject("sFID").getString("value");
			String strFName = org.getJSONObject("sFName")==null?"":org.getJSONObject("sFName").getString("value");
			String strIDs[] = strFID.substring(1).split("/");
			String strNames[] = strFName.substring(1).split("/");
			
			result.put("CurrentPersonID", strIDs[strIDs.length-1].substring(0,strIDs[0].indexOf(".")));
			result.put("CurrentPersonName", strNames[strNames.length]);
			result.put("CurrentOgnID", strIDs[0].substring(0,strIDs[0].indexOf(".")));
			result.put("CurrentOgnName", strNames[0]);
			result.put("CurrentDeptID", strIDs[1].substring(0,strIDs[1].indexOf(".")));
			result.put("CurrentDeptName", strNames[1]);
			result.put("CurrentFID", strFID);
			result.put("CurrentFName", strFName);
			result.put("CurrentFunRole", "3");
			flag = true;
		}else{
			result.put("CurrentOgnID", "");
			result.put("CurrentOgnName", "");
			result.put("CurrentDeptID", "");
			result.put("CurrentDeptName", "");
			result.put("CurrentFID", "");
			result.put("CurrentFName", "");
			result.put("CurrentFunRole", "3");
			flag = false;
		}
		return flag;
	}
}
