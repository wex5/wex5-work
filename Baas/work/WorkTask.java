package work;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;

public class WorkTask {
	private static final String DATASOURCE_SIGN = "system";

	public static JSONObject queryComplete(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_SIGN);
		String sID = params.getString("sID");
		JSONObject ret = new JSONObject();
		String sql = "select count(1) as countComplete from sa_task s where s.sparentid = '" + sID + "' and s.sStatusName = '未完成'";
		Object table = DataUtils.getValueBySQL(conn, sql, null);
		int i = Integer.parseInt(table.toString());
		if (i > 0) {
			ret.put("flag", false);
		} else {
			ret.put("flag", true);
		}
		return ret;
	}
}
