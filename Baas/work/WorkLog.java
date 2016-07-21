package work;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Iterator;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;

public class WorkLog {
	private static final String DATASOURCE_WORKLOG = "work";
	
	
//	/**
//	 * 需传入参数
//	 * 1.fPersonID
//	 * 2.fReleaseScope
//	 * 3.strDate
//	 * */
//	public static JSONObject queryOA_WorkLog(JSONObject params, ActionContext context) throws SQLException, NamingException {
//		Connection conn = context.getConnection(DATASOURCE_WORKLOG);
//		JSONArray result = new JSONArray();
//		
//		String fPersonID = params.getString("fPersonID");
//		String fReleaseScope = params.getString("fReleaseScope");
//		String strDate = params.getString("strDate");
//		
//		String ksql1 = "select distinct fPersonName \n" +
//					 "   from OA_WorkDaily \n" +
//					 "   where fDate = '"+strDate+"' AND ( fPersonID = '"+fPersonID+"' OR instr(fReleaseScope, '"+fReleaseScope+"') >= 1 )";
//		
//		String ksql2 = "select distinct fPersonName \n" +
//				 "   from OA_WorkWeekly \n" +
//				 "   where fDate = '"+strDate+"' AND ( fPersonID = '"+fPersonID+"' OR instr(fReleaseScope, '"+fReleaseScope+"') >= 1 )";
//
//		String ksql3 = "select distinct fPersonName \n" +
//				 "   from OA_Workmonthly \n" +
//				 "   where fDate = '"+strDate+"' AND ( fPersonID = '"+fPersonID+"' OR instr(fReleaseScope, '"+fReleaseScope+"') >= 1 )";
//	
//		Table table1 =  DataUtils.queryData(conn,ksql1,null,null,null,null);
//		Table table2 =  DataUtils.queryData(conn,ksql2,null,null,null,null);
//		Table table3 =  DataUtils.queryData(conn,ksql3,null,null,null,null);
//		
//		Iterator<Row> iterator1 = table1.getRows().iterator();
//		Iterator<Row> iterator2 = table2.getRows().iterator();
//		Iterator<Row> iterator3 = table3.getRows().iterator();
//		
//		int rowID = 0;
//		while(iterator1.hasNext()) {
//			Row info = iterator1.next();
//			String strPresonName = info.getString("fPersonName");
//			Row rowPsn = resultTable.getRow("PersonName", strPresonName);
//			
//			if(rowPsn==null || !rowPsn.getString("PersonName").equals(strPresonName)){
//				Row appendRow = resultTable.appendRow();
//				appendRow.setString("fID",""+rowID++);
//				appendRow.setString("PersonName",info.getString("fPersonName"));
//			}
//		}
//		while (iterator2.hasNext()) {
//			Row info = iterator2.next();
//			String strPresonName = info.getString("fPersonName");
//			Row rowPsn = resultTable.getRow("PersonName", strPresonName);
//			if(rowPsn==null || !rowPsn.getString("PersonName").equals(strPresonName)){
//				Row appendRow = resultTable.appendRow();
//				appendRow.setString("fID",""+rowID++);
//				appendRow.setString("PersonName",info.getString("fPersonName"));
//				appendRow.setState(ModifyState.NONE);
//			}
//		}
//		while (iterator3.hasNext()) {
//			Row info = iterator3.next();
//			String strPresonName = info.getString("fPersonName");
//			Row rowPsn = resultTable.getRow("PersonName", strPresonName);
//			if(rowPsn==null || !rowPsn.getString("PersonName").equals(strPresonName)){
//				Row appendRow = resultTable.appendRow();
//				appendRow.setString("fID",""+rowID++);
//				appendRow.setString("PersonName",info.getString("fPersonName"));
//			}
//			
//		}
//		JSONObject jo = new JSONObject();
//		jo.put("PersonName", result);
//		return null;
//	}
//	
//	
	/** 
	 * 查询工作日报
	 * 需传入
	 * 1.fPersonID
	 * */
	public static JSONObject queryOA_WorkDailyScope(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_WORKLOG);
		JSONArray result = new JSONArray();
		
		String fPersonID = params.getString("fPersonID");
//		
//		
//		String strWhere = "";
//		if(strStartDate!=null && !strStartDate.equals("") && strEndDate!=null && !strEndDate.equals("")){
//			strWhere = "		and fCreateTime>='"+strStartDate+"' and fCreateTime<='"+strEndDate+"' \n" ;
//		}

		String ksql = "select distinct OA_WorkDaily.* \n" +
					 "   from OA_WorkDaily \n" +
					 "   where (fPersonID = '"+fPersonID+"' OR instr(fReleaseScopeID, '"+fPersonID+"') >= 1 ) \n" +
					 "   order by fCreateTime desc";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
		Table table = DataUtils.queryData(conn, ksql, null,null,null,null);
		Iterator<Row> iterator = table.getRows().iterator();
		while(iterator.hasNext()) {
			JSONObject json  = new JSONObject();
			Row info = iterator.next();
			json.put("fID",info.getString("fID"));
			json.put("fPersonName",info.getString("fPersonName"));
			json.put("fCreateTime",sdf.format(info.getDateTime("fCreateTime")));
			json.put("fFinishWork",info.getString("fFinishWork"));
			json.put("fWorkPlan",info.getString("fWorkPlan"));
			json.put("fNeedHelp",info.getString("fNeedHelp"));
			json.put("fRemark",info.getString("fRemark"));
			json.put("fImgURL",info.getString("fImgURL"));
			result.add(json);
		}
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}
	
	/**
	 * 查询工作周报
	 * 需传入参数
	 * 1.fPersonID
	 * */
	public static JSONObject queryOA_WorkWeeklyScope(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_WORKLOG);
		JSONArray result = new JSONArray();
		
		String fPersonID = params.getString("fPersonID");
		
		String ksql = "select distinct OA_WorkWeekly.* \n" +
					 "   from OA_WorkWeekly \n" +
					 "   where (fPersonID = '"+fPersonID+"' OR instr(fReleaseScope, '"+fPersonID+"') >= 1) \n" +
					 "   order by fCreateTime desc";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
		Table table =  DataUtils.queryData(conn, ksql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while(iterator.hasNext()) {
			JSONObject json  = new JSONObject();
			Row info = iterator.next();
			json.put("fID",info.getString("fID"));
			json.put("fPersonName",info.getString("fPersonName"));
			json.put("fCreateTime",sdf.format(info.getDateTime("fCreateTime")));
			json.put("fFinishWork",info.getString("fFinishWork"));
			json.put("fWorkSummary",info.getString("fWorkSummary"));
			json.put("fWorkPlan",info.getString("fWorkPlan"));
			json.put("fNeedHelp",info.getString("fNeedHelp"));
			json.put("fRemark",info.getString("fRemark"));
			json.put("fImgURL",info.getString("fImgURL"));
			result.add(json);
		}
		JSONObject jo  = new JSONObject();
		jo.put("rows", result);
		return jo;
	}
	
	/**
	 * 查询工作月报
	 * 需传入参数
	 * 1.fPersonID
	 * */
	public static JSONObject queryOA_WorkmonthlyScope(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_WORKLOG);
		JSONArray result = new JSONArray();
		
		String fPersonID = params.getString("fPersonID");
		
		String ksql = "select distinct OA_Workmonthly.* \n" +
					 "   from OA_Workmonthly \n" +
					 "   where (fPersonID = '"+fPersonID+"' OR instr(fReleaseScope, '"+fPersonID+"') >= 1 )\n" +
					 "   order by fCreateTime desc";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Table table =  DataUtils.queryData(conn, ksql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while(iterator.hasNext()) {
			Row info = iterator.next();
			JSONObject json = new JSONObject();
			json.put("fID",info.getString("fID"));
			json.put("fPersonName",info.getString("fPersonName"));
			json.put("fCreateTime",sdf.format(info.getDateTime("fCreateTime")));
			json.put("fFinishWork",info.getString("fFinishWork"));
			json.put("fWorkSummary",info.getString("fWorkSummary"));
			json.put("fWorkPlan",info.getString("fWorkPlan"));
			json.put("fNeedHelp",info.getString("fNeedHelp"));
			json.put("fRemark",info.getString("fRemark"));
			json.put("fImgURL",info.getString("fImgURL"));
			result.add(json);
		}
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}
}
