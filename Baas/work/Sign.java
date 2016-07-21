package work;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Table;
import com.justep.baas.data.Transform;

public class Sign {
	private static final String DATASOURCE_SIGN = "work";

	public static JSONObject querySignCount(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_SIGN);
		String fPersonID = params.getString("fPersonID");
		String strDate = params.getString("strDate");
		try {
			String condition = " AND 1=2 "; //如果不符合支持的数据库，不能查到数据。
			
			if (WorkUtil.isMysql(conn)){
				condition = " AND  DATE_FORMAT(o.fSignTime,'%Y-%m-%d') = " + "'" + strDate + "' \n"; 
			} else if (WorkUtil.isOracle(conn)) {
				condition = " AND  to_char(o.fSignTime,'yyyy-mm-dd') = " + "'" + strDate + "' \n"; 
			} else {
				throw new com.justep.baas.data.sql.SQLException("目前仅支持oracle和mysql数据库库");
			}
			
			String sql = "select distinct fID,o.fPersonName,o.fSignTime,o.fLongitude,o.fDimension,o.fSignAddress,o.fRemark,o.fImgURL \n" + "   from OA_Sign o \n" + "  where o.fPersonID = '"
					+ fPersonID + "'" + condition ;
			
			//System.out.println("querySignCount" + sql);
			Table table = DataUtils.queryData(conn, sql, null, null, null, null);
			return Transform.tableToJson(table);
		} finally {
			conn.close();
		}
	}

	public static JSONObject queryDeptLatestSign(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_SIGN);
		String strWhereOgn = "";
		String strDate = params.getString("strDate");
		String fDeptID = params.getString("fDeptID");
		if (fDeptID == null || "".equals(fDeptID)) {
			fDeptID = params.getString("fOgnID")+"%dpt";
		}
		strWhereOgn = " and o.fPersonID in (select o.sPersonID from x5sys.sa_oporg o where o.sFID like '%"+fDeptID+"%' and sOrgKindID = 'psm')";

		// 查询团队最新签到的人员ID，人员名称，部门ID，部门名称，签到信息（时间，地点fAddress），头像图片信息
		try {
			String sql= "";
			if (WorkUtil.isMysql(conn)){
				sql = "select fID as id, o.fPersonID, o.fPersonName,max(o.fSignTime) as fSignTime, o.fDeptID, o.fDeptName, o.fLongitude,o.fDimension,o.fSignAddress as fAddress,o.fRemark,o.fImgURL,count(*) as fSignCount \n"
						+ " from oa_sign o  where DATE_FORMAT(o.fSignTime,'%Y-%m-%d') = '" + strDate + "' \n" + strWhereOgn + "  group By o.fPersonID  order by o.fPersonName , o.fSignTime desc ";
				
			} else if (WorkUtil.isOracle(conn)) {
				sql = "select fID as id, o.fPersonID, o.fPersonName,max(o.fSignTime) as fSignTime, o.fDeptID, o.fDeptName, o.fLongitude,o.fDimension,o.fSignAddress as fAddress,o.fRemark,o.fImgURL,count(*) as fSignCount \n"
						+ " from oa_sign o  where to_char(o.fSignTime,'yyyy-mm-dd') = '" + strDate + "' \n" + strWhereOgn 
						+ " group By o.fID , o.fPersonID, o.fPersonName, o.fDeptID, o.fDeptName, o.fLongitude, o.fDimension,o.fSignAddress , o.fRemark, o.fImgURL "
						+ " order by o.fPersonName , fSignTime desc ";
			} else {
				throw new com.justep.baas.data.sql.SQLException("目前仅支持oracle和mysql数据库库");
			}
			//System.out.println("queryDeptLatestSign" + sql);
			Table table = DataUtils.queryData(conn, sql, null, null, null, null);
			return Transform.tableToJson(table);
		} finally {
			conn.close();
		}
	}

	public static JSONObject queryDeptNotSign(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_SIGN);
		String strWhereSignOgn = "";
		String strWhereOgn = "";
		String strDate = params.getString("strDate");
		String fDeptID = params.getString("fDeptID");
		if (fDeptID == null || "".equals(fDeptID)) {
			fDeptID = params.getString("fOgnID")+"%dpt";
			strWhereSignOgn = " and o.fOrgID = '" + fDeptID + "'";
		}else{
			strWhereSignOgn = " and o.fDeptID = '" + fDeptID + "'";
		}
		strWhereOgn = "%" + fDeptID;
		
		// 查询团队最新签到的人员ID，人员名称，部门ID，部门名称，签到信息（时间，地点fAddress），头像图片信息
		try {
			String condition = "  1=2 "; //如果不符合支持的数据库，不能查到数据。
			if (WorkUtil.isMysql(conn)){
				condition = "   DATE_FORMAT(o.fSignTime,'%Y-%m-%d')  = '" + strDate + "'"; 
			} else if (WorkUtil.isOracle(conn)) {
				condition = "   to_char(o.fSignTime,'yyyy-mm-dd') = '" + strDate + "'"; 
			} else {
				throw new com.justep.baas.data.sql.SQLException("目前仅支持oracle和mysql数据库库");
			}
			String sql1 = "select distinct ogn.spersonid as fPersonID, ogn.sName as fPersonName from x5sys.SA_OPOrg ogn where ogn.sFID like '" + strWhereOgn + "%dpt%' and ogn.sOrgKindID = 'psm' "
					+ "and ogn.spersonid not in ( select o.fPersonID from OA_Sign o where " + condition + strWhereSignOgn
					+ "group by o.fPersonID) order by ogn.sName";
			
			//System.out.println("queryDeptNotSign" + sql1);
			Table table1 = DataUtils.queryData(conn, sql1, null, null, null, null);

			return Transform.tableToJson(table1);
		} finally {
			conn.close();
		}
	}
	
}
