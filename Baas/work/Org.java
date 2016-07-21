package work;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;
import com.justep.baas.data.Transform;

public class Org {
	private static final String DATASOURCE_X5SYS = "system";

	public static JSONObject querySa_OporgPsn(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		try {
			String sql = "select o.*,p.sFunRole from sa_oporg o left join sa_opperson p on o.sPersonID=p.sID order by o.sOrgKindID";
			Table table = DataUtils.queryData(conn, sql, null, null, null, null);
			return Transform.tableToJson(table);
		} finally {
			conn.close();
		}
	}

	public static JSONObject updateSa_Oporg(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		boolean isOK = false;

		String rowID = params.getString("rowID");
		String oldName = params.getString("oldName");
		String newName = params.getString("newName");
		String oldCode = params.getString("oldCode");
		String newCode = params.getString("newCode");
		

		String sqlName = "update sa_oporg set sName = '" + newName + "',sCode = '"+newCode+"' where sID='" + rowID + "'";
		String sqlFName = "update sa_oporg set sFName = replace(sFName,'" + oldName + "','" + newName + "'),sFCode = replace(sFCode,'" + oldCode + "','" + newCode + "') where sFID like '%" + rowID + "%'";

		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sqlName);
			pstmt.executeUpdate();
			pstmt = conn.prepareStatement(sqlFName);
			pstmt.executeUpdate();
			// context.commit();
			isOK = true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (null != pstmt) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (null != conn) {
				try {
					if (!conn.isClosed()) {
						context.closeConnection();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		JSONObject jo = new JSONObject();
		jo.put("state", isOK);
		return jo;
	}

	public static JSONObject deleteOrg(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		boolean isOK = false;
		String deleteRowID = params.getString("rowID");
		String sql = "select count(sID) from sa_oporg where sFID like '%" + deleteRowID + "%.psm'";
		Object i = DataUtils.getValueBySQL(conn, sql, null);
		int num = Integer.parseInt(i == null ? "0" : i.toString());
		if (num == 0) {
			String mainSql = "delete from SA_OPOrg where sFID like '%" + deleteRowID + "%'";
			PreparedStatement pstmt = null;

			try {
				pstmt = conn.prepareStatement(mainSql);
				pstmt.execute();
				context.commit();
				isOK = true;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if (null != pstmt) {
					try {
						pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				if (null != conn) {
					try {
						if (!conn.isClosed()) {
							context.closeConnection();
						}
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}

		}
		JSONObject jo = new JSONObject();
		jo.put("state", isOK);
		return jo;
	}

	public static JSONObject queryPerson(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		boolean isOK = false;
		String sParent = params.getString("sParent");
		String personID = params.getString("personID");

		String sql = "select * from sa_oporg where sParent = '" + sParent + "'";
		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		ArrayList<String> str = new ArrayList<String>();
		while (iterator.hasNext()) {
			Row info = iterator.next();
			str.add(info.getString("sPersonID"));
		}

		if (str.size() > 0) {
			if (str.indexOf(personID) != -1) {
				isOK = true;
			}
		}

		JSONObject json = new JSONObject();
		json.put("state", isOK);
		return json;
	}

	public static JSONObject movePerson(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);

		String newMainOrgID = params.getString("newParent");
		String oldMainOrgID = params.getString("oldParent");
		String mainPersonID = params.getString("mainPersonID");

		String sID = params.getString("sID");
		String sName = params.getString("sName");
		String sCode = params.getString("sCode");
		String sFName = params.getString("sFName");
		String sFCode = params.getString("sFCode");
		String sFID = params.getString("sFID");
		String sOrgKindID = params.getString("sOrgKindID");
		String sSequence = params.getString("sSequence");
		String sParent = params.getString("sParent");
		String sPersonID = params.getString("sPersonID");
		String sNodeKind = params.getString("sNodeKind");
		String sValidState = params.getString("sValidState");
		String version = params.getString("version");

		boolean Isuccess = false;
		boolean Usuccess = false;

		String sql = "INSERT INTO sa_oporg (sID,sName,sCode,sFName,sFCode,sFID,sOrgKindID,sSequence,sParent,sPersonID,sNodeKind,sValidState,version) " + "VALUES ('" + sID + "','" + sName + "','"
				+ sCode + "', '" + sFName + "','" + sFCode + "','" + sFID + "','" + sOrgKindID + "','" + sSequence + "','" + sParent + "','" + sPersonID + "','" + sNodeKind + "','" + sValidState
				+ "','" + version + "')";
		PreparedStatement ps = conn.prepareStatement(sql);
		int insert = ps.executeUpdate();
		if (insert > 0) {
			Isuccess = true;
		}

		String _sql = "update SA_OPPerson set sMainOrgID= '" + newMainOrgID + "' where sMainOrgID='" + oldMainOrgID + "' and sID='" + mainPersonID + "'";
		ps = conn.prepareStatement(_sql);
		int updata = ps.executeUpdate();
		if (updata > 0) {
			Usuccess = true;
		}

		JSONObject json = new JSONObject();
		json.put("insert", Isuccess);
		json.put("updata", Usuccess);

		return json;
	}

	public static JSONObject updataMainOrg(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);

		String sParent = params.getString("sParent");
		String sPersonID = params.getString("sPersonID");

		String sql1 = "update sa_opperson p set p.sMainOrgID='' where p.sMainOrgID='" + sParent + "' and p.sID='" + sPersonID + "'";

		String sql2 = "update sa_opperson p set p.sMainOrgID=" + "(case when (select min(o.sParent) from sa_oporg o where o.sPersonID='" + sPersonID
				+ "') is null then '' else (select min(o.sParent) from sa_oporg o where o.sPersonID='" + sPersonID + "') end)" + " where p.sID='" + sParent + "' and p.sMainOrgID=''";

		PreparedStatement ps = conn.prepareStatement(sql1);
		ps.executeUpdate();
		ps = conn.prepareStatement(sql2);
		ps.executeUpdate();
		ps.close();
		conn.close();
		return null;
	}

	/**
	 * 需要三个参数 1.电话号码 2.注册人姓名 3.加密后的密码
	 * */
	public static JSONObject queryIsActivation(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		JSONObject json = new JSONObject();
		String success = null;
		HttpServletRequest request = (HttpServletRequest)context.get(ActionContext.REQUEST);
		WorkUtil util = new WorkUtil();
		
		String phone = params.getString("phone");
		String name = params.getString("name");
		String password = params.getString("password");
		String uuid = params.getString("uuid");
		
		String sendTime = (String) request.getSession().getAttribute(phone+"Time");
		long diff = util.getDateDiff(sendTime, util.getDateFormat(new Date(System.currentTimeMillis()), "yyyy-MM-dd HH:mm:ss"));
		diff=0;
		if(diff/1000>60){
			success = "短信验证超时";
		}else{
			String phoneSql = "select * from sa_oporg where sPhone = '"+phone+"'";
			Table table = DataUtils.queryData(conn, phoneSql, null, null, null, null);
			Iterator<Row> iterator = table.getRows().iterator();
			
			PreparedStatement ps=null;
			
			if(iterator.hasNext()){
				Row info = iterator.next();
				String sID = info.getString("sID").split("@")[0];
				String dptID =  info.getString("sID").split("@")[1];
				String sql = "update sa_oporg set sPersonID = '"+sID+"' where sPhone = '"+phone+"'";
				ps = conn.prepareStatement(sql);
				ps.executeUpdate();
				ps = conn.prepareStatement("insert into sa_opperson (sID,sMobilePhone,sLoginName,sCode,sName,sNumb,sMainOrgID,sPasswordTimeLimit,sPasswordModifyTime,sValidState,sPassword,sFunRole) VALUES(?,?,?,?,?,?,?,?,SYSDATE(),?,?,?)");
				ps.setString(1, sID);
				ps.setString(2, phone);
				ps.setString(3, phone);
				ps.setString(4, phone);
				ps.setString(5, name);
				ps.setInt(6, 00000000);
				ps.setString(7, dptID);
				ps.setInt(8, 90);
				//ps.setDate(9, new Date(System.currentTimeMillis()));
				ps.setInt(9,1);
				ps.setString(10,password);
				ps.setInt(11,3);
				try{
					int i =ps.executeUpdate();
					if(i>0){
						success = "注册成功！";
					}
				}catch(SQLException e){
					success = "手机号已被注册！";
				}
			}else{
				ps = conn.prepareStatement("insert into sa_opperson (sID,sMobilePhone,sLoginName,sCode,sName,sNumb,sMainOrgID,sPasswordTimeLimit,sPasswordModifyTime,sValidState,sPassword,sFunRole) VALUES(?,?,?,?,?,?,?,?,SYSDATE(),?,?,?)");
				ps.setString(1, uuid);
				ps.setString(2, phone);
				ps.setString(3, phone);
				ps.setString(4, phone);
				ps.setString(5, name);
				ps.setInt(6, 00000000);
				ps.setString(7, "");
				ps.setInt(8, 90);
				//ps.setDate(9, new Date(System.currentTimeMillis()));
				ps.setInt(9,1);
				ps.setString(10,password);
				ps.setInt(11,3);
				try{
					int i =ps.executeUpdate();
					if(i>0){
						success = "注册成功！";
					}
				}catch(SQLException e){
					success = "手机号已被注册！";
				}
			}
		}
		json.put("status",success);
		return json;
	}

	public static JSONObject getsSequence(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		JSONObject json = new JSONObject();
		String sID = params.getString("sID");
		String sSequence = params.getString("sSequence");

		String sql = "select MAX(SUBSTR(sSequence,-3)) as sSequence from sa_oporg where sSequence is not null AND sParent = '" + sID + "'";

		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();

		Row info = iterator.next();
		String str = info.getString("sSequence");
		if (str == null) {
			sSequence += "/001";
		} else {
			int i = Integer.parseInt(str) + 1;
			if (i < 10) {
				sSequence += "/00" + i;
			} else if (i >= 10 && i < 100) {
				sSequence += "/0" + i;
			} else {
				sSequence += "/" + i;
			}
		}

		json.put("data", sSequence);
		return json;
	}
	
	public static JSONObject queryHasOrg(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		JSONObject ret = new JSONObject();
		String sql = "SELECT count(1) as countNum FROM sa_oporg WHERE sOrgKindID<>'psm'";
		
		Object res = DataUtils.getValueBySQL(conn, sql, null);
		int i = Integer.parseInt(res.toString());
		if (i > 0) {
			ret.put("flag", true);
		} else {
			ret.put("flag", false);
		}
		return ret;
	}

}
