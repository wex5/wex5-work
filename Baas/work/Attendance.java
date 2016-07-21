package work;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;

public class Attendance {
	private static final String DATASOURCE_ATTENDANCE = "work";

	// 需要参数 ognID-组织ID
	public static JSONObject queryOA_AttendanceGroup(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		JSONArray result = new JSONArray();
		String ognID = params.getString("ognID");
		String ksql_Adds = "";
		String ksql_Week = "";
		String sql = "select fID,fAttendanceClass,fAttendanceGroupName,fAttendanceTeamManager,fAttendanceTeamManagerID,fAttendancePersonName,fAttendancePersonID " + " from OA_AttendanceAdmin"
				+ " where fOrgID  =  '" + ognID + "'";

		String fAttendanceID = "";
		String fWeeks = "";
		String sPersonCount = ""; // 考勤组负责人
		String sPersonCountID = ""; // 考勤组负责人ID
		int jPersonCount = 0; // 参与考勤人名称
		String jPersonCountID = ""; // 参与考勤人ID
		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while (iterator.hasNext()) {
			JSONObject json = new JSONObject();
			Row info = iterator.next();
			fAttendanceID = info.getString("fID");
			json.put("fID", info.getString("fID"));
			json.put("fAttendanceClass", info.getString("fAttendanceClass"));
			json.put("fAttendanceGroupName", info.getString("fAttendanceGroupName"));

			if (info.getString("fAttendanceTeamManager") != null) {
				sPersonCount = info.getString("fAttendanceTeamManager");
			}

			if (info.getString("fAttendanceTeamManagerID") != null) {
				sPersonCountID = info.getString("fAttendanceTeamManagerID");
				sPersonCountID = sPersonCountID.join(",");
			} else {
				sPersonCountID = "";
			}

			if (info.getString("fAttendancePersonName") != null && !info.getString("fAttendancePersonName").equals("")) {
				jPersonCount = info.getString("fAttendancePersonName").split(",").length;
			} else {
				jPersonCount = 0;
			}

			if (info.getString("fAttendancePersonID") != null) {
				jPersonCountID = info.getString("fAttendancePersonID");
				jPersonCountID = jPersonCountID.join(",");
			} else {
				jPersonCountID = "";
			}

			json.put("fPersonNameS", sPersonCount);
			json.put("fPersonNameSID", sPersonCountID);
			json.put("fPersonNameJ", jPersonCount + "人");
			json.put("fPersonNameJID", jPersonCountID);

			ksql_Week = "select fAttendanceAdminID,fDepartID,fMonday,fTuesday,fWednesday,fThursday,fFriday,fSaturday,fSunday,fDepart,fDepartTime " + " from OA_AttendanceWeek "
					+ " where fAttendanceAdminID = '" + fAttendanceID + "' ";

			Table tableWeek = DataUtils.queryData(conn, ksql_Week, null, null, null, null);
			Iterator<Row> iteratorWeek = tableWeek.getRows().iterator();
			String fDepart = "";
			String fDepartTime = "";
			if (iteratorWeek.hasNext()) {
				Row weekRow = iteratorWeek.next();
				fWeeks = "星期";
				if ("true".equals(weekRow.getString("fMonday"))) {
					fWeeks = fWeeks + "一";
				}
				if ("true".equals(weekRow.getString("fTuesday"))) {
					if (fWeeks.equals("星期")) {
						fWeeks = fWeeks + "二";
					} else {
						fWeeks = fWeeks + "、二";
					}
				}
				if ("true".equals(weekRow.getString("fWednesday"))) {
					if (fWeeks.equals("星期")) {
						fWeeks = fWeeks + "三";
					} else {
						fWeeks = fWeeks + "、三";
					}
				}
				if ("true".equals(weekRow.getString("fThursday"))) {
					if (fWeeks.equals("星期")) {
						fWeeks = fWeeks + "四";
					} else {
						fWeeks = fWeeks + "、四";
					}
				}
				if ("true".equals(weekRow.getString("fFriday"))) {
					if (fWeeks.equals("星期")) {
						fWeeks = fWeeks + "五";
					} else {
						fWeeks = fWeeks + "、五";
					}
				}
				if ("true".equals(weekRow.getString("fSaturday"))) {
					if (fWeeks.equals("星期")) {
						fWeeks = fWeeks + "六";
					} else {
						fWeeks = fWeeks + "、六";
					}
				}
				if ("true".equals(weekRow.getString("fSunday"))) {
					if (fWeeks.equals("星期")) {
						fWeeks = fWeeks + "日";
					} else {
						fWeeks = fWeeks + "、日";
					}
				}
				fDepart = weekRow.getString("fDepart");
				fDepartTime = weekRow.getString("fDepartTime");
			}
			json.put("fWeek", fWeeks);
			json.put("fDepart", fDepart);
			json.put("fAMPM", fDepartTime);

			ksql_Adds = "select fAttendanceAdminID,fAttenAddrName \n" + "from OA_AttendanceMap\n" + "where fAttendanceAdminID =  '" + fAttendanceID + "'";
			Table tableAdds = DataUtils.queryData(conn, ksql_Adds, null, null, null, null);
			Iterator<Row> iteratorAdds = tableAdds.getRows().iterator();
			String strAdds = "";
			while (iteratorAdds.hasNext()) {
				Row addsRow = iteratorAdds.next();
				if (strAdds.equals("")) {
					strAdds = addsRow.getString("fAttenAddrName");
				} else {
					strAdds = strAdds + "、" + addsRow.getString("fAttenAddrName");
				}
			}

			json.put("fAttenAddrName", strAdds);
			result.add(json);
		}
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}
	
	public static JSONObject queryPersonAttendanceTime(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		JSONArray result = new JSONArray();
		String person = params.getString("person");
		String sql = "select aw.fID,aw.fAttendanceAdminID,aw.fDepart,aw.fDepartTime from oa_attendanceadmin aa inner join oa_attendanceweek aw on aa.fID=aw.fAttendanceAdminID"
				 +" where aa.fAttendancePersonID like '%"+person+"%'   order by fDepartTime desc" ;
		
		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		int i = 1;
		while (iterator.hasNext()) {
			Row info = iterator.next();
			JSONObject json = new JSONObject();
			json.put("fID", info.getString("fID"));
			json.put("id", i);
			json.put("fAttendanceAdminID", info.getString("fAttendanceAdminID"));
			json.put("fDepart", info.getString("fDepart"));
			json.put("fStartAM", info.getString("fDepartTime").split("-")[0]);
			json.put("fEndPM", info.getString("fDepartTime").split("-")[1]);
			result.add(json);
			i++;
		}
		
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}
	

	// 需传入考勤组ID rowID，当前人员ID ID，选中的人员ID person
	public static JSONObject queryPerson(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		//String ID = params.getString("ID");
		String[] arr = params.getString("person").split(",");
		String orgID = params.getString("orgID");
		String rowID = params.getString("rowID");
		JSONArray result = new JSONArray();

		String ksql = "select fID,fAttendancePersonName,fAttendancePersonID,fAttendanceGroupName  from OA_AttendanceAdmin where fOrgID = '"+orgID+"' and fID<>'"+rowID+"'";

		Table tableActual = DataUtils.queryData(conn, ksql, null, null, null, null);
		Iterator<Row> iterator = tableActual.getRows().iterator();
		while (iterator.hasNext()) {
			Row departRow = iterator.next();
			String mainID = departRow.getString("fID");
			String[] personID = departRow.getString("fAttendancePersonID").split(",");
			String[] personName = departRow.getString("fAttendancePersonName").split(",");
			String groupName = departRow.getString("fAttendanceGroupName");
			System.out.println(personID);
			for (int i = 0; i < arr.length; i++) {
				for (int j = 0; j < personID.length; j++) {
					if (arr[i].equals(personID[j])) {
						JSONObject json = new JSONObject();
						json.put("fID", mainID);
						json.put("fPersonID", arr[i]);
						json.put("fPersonName", personName[j]);
						json.put("fAttendanceGroupName", groupName);
						result.add(json);
						break;
					}
				}
			}
		}
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}

	// 需要传入考勤组ID deleteAll
	public static JSONObject deleteAttendance(JSONObject params, ActionContext context) throws SQLException, NamingException {
		String deleteAll = params.getString("deleteAll");
		String mainSql = "delete from OA_AttendanceAdmin where fID='" + deleteAll + "'";
		String wifiSql = "delete  from OA_AttendanceWifi where fAttendanceAdminID='" + deleteAll + "'";
		String mapSql = "delete  from OA_AttendanceMap where fAttendanceAdminID='" + deleteAll + "'";
		String timeSql = "delete  from OA_AttendanceTime where fAttendanceAdminID='" + deleteAll + "'";
		String weekSql = "delete  from OA_AttendanceWeek where fAttendanceAdminID='" + deleteAll + "'";

		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean isOK = false;
		try {
			conn = context.getConnection(DATASOURCE_ATTENDANCE);
			// 更新一个字段
			pstmt = conn.prepareStatement(mainSql);
			pstmt.execute();
			// 更新另一个字段
			pstmt = conn.prepareStatement(wifiSql);
			pstmt.execute();
			// 更新另一个字段
			pstmt = conn.prepareStatement(mapSql);
			pstmt.execute();
			// 更新另一个字段
			pstmt = conn.prepareStatement(timeSql);
			pstmt.execute();
			// 更新另一个字段
			pstmt = conn.prepareStatement(weekSql);
			pstmt.execute();
			context.commit();
			isOK = true;
		} catch (NamingException e) {
			try {
				context.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
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

		JSONObject json = new JSONObject();
		return (JSONObject) json.put("state", isOK);
	}

	// 需要传入组织ID ognID
	public static JSONObject queryGoWorkTime(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		JSONArray result = new JSONArray();
		String ognID = params.getString("ognID");
		// 查班次时间
		String ksql = "select OA_AdvancedSetting,version,fGoWorkTime," + "fLateTime,fAbsentTime,fFirstEarlyTime," + "fOgnID,fOgnName,fCreatepreID,"
				+ "fCreatepreName from OA_AdvancedSetting  where fOgnID = '" + ognID + "'";
		Table tableActual = DataUtils.queryData(conn, ksql, null, null, null, null);

		Iterator<Row> iterator = tableActual.getRows().iterator();

		while (iterator.hasNext()) {
			JSONObject json = new JSONObject();
			Row info = iterator.next();
			json.put("id", info.getString("OA_AdvancedSetting"));
			json.put("fOgnID", info.getString("fOgnID"));
			json.put("fGoWorkTime", info.getString("fGoWorkTime"));
			result.add(json);
		}

		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		return jo;
	}

	// 需传入组织ID
	public static JSONObject queryAttendanceTime(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		JSONArray result = new JSONArray();
		String ognID = params.getString("ognID");

		String ksql = "select fDepart,fStartAM,fEndAM " + " from OA_AttendanceTime " + " where fOrgID ='" + ognID + "' order by fDepart";

		Table tableActual = DataUtils.queryData(conn, ksql, null, null, null, null);

		Iterator<Row> iterator = tableActual.getRows().iterator();

		String key = null;
		JSONObject json = null;
		while (iterator.hasNext()) {
			Row info = iterator.next();
			if (info.getString("fDepart") != null && info.getString("fDepart").equals(key)) {
				json.put("fTime", json.getString("fTime") + "   " + info.getString("fStartAM") + "-" + info.getString("fEndAM"));
			} else {
				json = new JSONObject();
				json.put("fDepart", info.getString("fDepart"));
				key = info.getString("fDepart");
				json.put("fTime", info.getString("fStartAM") + "-" + info.getString("fEndAM"));
				result.add(json);
			}
			
		}

		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		return jo;
	}

	/**
	 * 查询考勤时间
	 * */
	public static String getCheckRuleTime(String time, String personID, Connection conn) {
		String strTime = "";
		String ksql = "SELECT aa.fID as fAttendanceAdminID, DATE_FORMAT(MAX(STR_TO_DATE(ot." + time + ",'%H:%i:%S')),'%H:%i:%S') AS " + time 
				+ "  FROM oa_attendancetime ot inner join oa_attendanceWeek aw on aw.fDepart=ot.fDepart inner join oa_attendanceadmin aa on aa.fID=aw.fAttendanceAdminID "
				+ " WHERE aa.fAttendancePersonID LIKE '%" + personID + "%'"
				+ " GROUP BY fAttendanceAdminID";
				
		Table table = DataUtils.queryData(conn, ksql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while (iterator.hasNext()) {
			Row info = iterator.next();
			strTime = info.getString(time);
		}
		return strTime;
	}

	private static Date getMonthEnd(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.MONTH, 1);
		int index = calendar.get(Calendar.DAY_OF_MONTH);
		calendar.add(Calendar.DATE, (-index));
		return calendar.getTime();
	}

	public static String getDateFormat(String strDate, boolean hasHour) {
		String strDateTime = "";
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		DateFormat df2 = new SimpleDateFormat("yyyy年MM月dd日 E HH:mm:ss");
		if (!hasHour) {
			df = new SimpleDateFormat("yyyy-MM-dd");
			df2 = new SimpleDateFormat("yyyy年MM月dd日 E");
		}
		try {
			Date dt = df.parse(strDate);
			Calendar cal = Calendar.getInstance();
			cal.setTime(dt);
			int w = cal.get(Calendar.DAY_OF_WEEK) - 1;
			if (w < 0)
				w = 0;
			strDateTime = df2.format(dt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return strDateTime;
	}

	public static String getDateDiff(String startTime, String endTime) {
		String strTime = "";
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date d1 = df.parse(startTime);
			Date d2 = df.parse(endTime);
			long diff = d2.getTime() - d1.getTime();
			long days = diff / (1000 * 60 * 60 * 24);
			long hours = (diff - days * (1000 * 60 * 60 * 24)) / (1000 * 60 * 60);
			long minutes = (diff - days * (1000 * 60 * 60 * 24) - hours * (1000 * 60 * 60)) / (1000 * 60);
			long second = (diff - days * (1000 * 60 * 60 * 24) - hours * (1000 * 60 * 60) - minutes * (1000 * 60)) / 1000;
			if (days >= 1) {
				strTime = days + "天" + hours + "小时" + minutes + "分钟" + second + "秒";
			} else if (hours >= 1) {
				strTime = hours + "小时" + minutes + "分钟" + second + "秒";
			} else if (minutes >= 1) {
				strTime = minutes + "分钟" + second + "秒";
			} else {
				strTime = second + "秒";
			}
		} catch (Exception e) {
		}
		return strTime;
	}

	private static Date getNextDay(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DATE, 1);
		return calendar.getTime();
	}

	/**
	 * 查询个人考勤统计 需传入参数 1.strDate 2.fPersonID
	 * */
	public static JSONObject queryCheckStat(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		JSONArray result = new JSONArray();
		String fPersonID = params.getString("fPersonID");
		String strDate = params.getString("strDate");
		String checkInAMtime = getCheckRuleTime("fStartAM", fPersonID, conn);
		String checkOutPMtime = getCheckRuleTime("fEndPM", fPersonID, conn);
		String checkTime = "";
		String strMistimeing = "";

		// 当月正常考勤
		String ksql1 = "select fID,DATE_FORMAT(o.fCheckOutPM,'%Y-%m-%d %H:%i:%S') as checkTime \n" + "   from OA_ChekInOut o \n" + "  where o.fPersonID = '" + fPersonID + "' AND o.fCheckOutPM like '"
				+ strDate + "%' and (o.fIsLate='' or o.fIsLate is null) and (o.fIsLeaving='' or o.fIsLeaving is null)  order by o.fCheckInAM";
		// 当月迟到
		String ksql2 = "select fID,DATE_FORMAT(o.fCheckInAM,'%Y-%m-%d %H:%i:%S') as checkTime\n" + "   from OA_ChekInOut o \n" + "  where o.fPersonID = '" + fPersonID + "' AND o.fCheckInAM like '"
				+ strDate + "%' and o.fIsLate='迟到' order by o.fCheckInAM";
		// 当月早退
		String ksql3 = "select fID,DATE_FORMAT(o.fCheckOutPM,'%Y-%m-%d %H:%i:%S') as checkTime\n" + "   from OA_ChekInOut o \n" + "  where o.fPersonID = '" + fPersonID + "' AND o.fCheckOutPM like '"
				+ strDate + "%' and o.fIsLeaving='早退' order by o.fCheckInAM";
		// 当月未打卡
		String ksql4 = "select fID,DATE_FORMAT(o.fCheckInAM,'%Y-%m-%d %H:%i:%S') as checkTime \n" + "   from OA_ChekInOut o \n" + "  where o.fPersonID = '" + fPersonID + "'  and DATE_FORMAT(o.fCheckInAM,'%Y-%m')= '"+ strDate +"' "
				+ " and DATE_FORMAT(o.fCheckInAM,'%Y-%m-%d')<DATE_FORMAT(sysdate(),'%Y-%m-%d') and (o.fCheckOutPM='' or o.fCheckOutPM is null)  order by o.fCheckInAM";

		// 当月全部考勤
		String ksql5 = "select fID,DATE_FORMAT(o.fCheckInAM,'%Y-%m-%d %H:%i:%S') as checkTime \n" + "   from OA_ChekInOut o \n" + "  where o.fPersonID = '" + fPersonID + "' AND o.fCheckInAM like '"
				+ strDate + "%'  order by o.fCheckInAM";

		// 需要自定义日期范围。
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date oneDate;
		Date endDate;
		String firstDay = "";
		String endDay = "";
		try {
			oneDate = dateFormat.parse(strDate + "-01");
			endDate = getMonthEnd(dateFormat.parse(strDate + "-01"));
			firstDay = dateFormat.format(oneDate);
			endDay = dateFormat.format(endDate);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		// 查询当月审批通过的请假，出差和外出 ，注意过滤时fStartTime必须《=当前月最后一天；fEndTime必须大于当月第一天。
		String ksqlLeave = " SELECT DATE_FORMAT(o.fStartTime,'%Y-%m-%d') as fStartTime, \n" + " DATE_FORMAT(o.fEndTime,'%Y-%m-%d') as fEndTime \n"
				+ " FROM OA_WM_LeaveApply o where o.fApplyPersonID = '"
				+ fPersonID
				+ "' \n"
				+ " and DATE_FORMAT(o.fStartTime,'%Y-%m-%d') <= '"
				+ endDay
				+ "' and DATE_FORMAT(o.fEndTime,'%Y-%m-%d')>='"
				+ firstDay
				+ "' and o.fBizState='bsFinished'"

				+ "\n union \n"

				+ " SELECT DATE_FORMAT(OA_WM_EvecApply.fSTARTTIME,'%Y-%m-%d') as fStartTime, \n"
				+ " DATE_FORMAT(OA_WM_EvecApply.fENDTIME,'%Y-%m-%d') as fEndTime \n"
				+ " FROM OA_WM_OtherApply OA_WM_EvecApply where OA_WM_EvecApply.fAPPLYPERSONID = '"
				+ fPersonID
				+ "' \n"
				+ " and DATE_FORMAT(OA_WM_EvecApply.fSTARTTIME,'%Y-%m-%d') <= '"
				+ endDay
				+ "' and DATE_FORMAT(OA_WM_EvecApply.fENDTIME,'%Y-%m-%d')>='"
				+ firstDay
				+ "' and OA_WM_EvecApply.fBizState='bsFinished'"

				+ "\n union \n"

				+ "SELECT DATE_FORMAT(OA_WM_outApply.fSTARTTIME,'%Y-%m-%d') as fStartTime, \n"
				+ " DATE_FORMAT(OA_WM_outApply.fENDTIME,'%Y-%m-%d') as fEndTime \n"
				+ "FROM OA_WM_outApply OA_WM_outApply "
				+ " WHERE  OA_WM_outApply.fAPPLYPERSONID = '"
				+ fPersonID
				+ "' \n"
				+ " and DATE_FORMAT(OA_WM_outApply.fSTARTTIME,'%Y-%m-%d') <= '"
				+ endDay
				+ "' and DATE_FORMAT(OA_WM_outApply.fENDTIME,'%Y-%m-%d')>='" + firstDay + "' and OA_WM_outApply.fBizState='bsFinished'";

		Table table1 = DataUtils.queryData(conn, ksql1, null, null, null, null);
		Table table2 = DataUtils.queryData(conn, ksql2, null, null, null, null);
		Table table3 = DataUtils.queryData(conn, ksql3, null, null, null, null);
		Table table4 = DataUtils.queryData(conn, ksql4, null, null, null, null);
		Table table5 = DataUtils.queryData(conn, ksql5, null, null, null, null);

		Table tblLeave = DataUtils.queryData(conn, ksqlLeave, null, null, null, null);

		Iterator<Row> iterator1 = table1.getRows().iterator();
		Iterator<Row> iterator2 = table2.getRows().iterator();
		Iterator<Row> iterator3 = table3.getRows().iterator();
		Iterator<Row> iterator4 = table4.getRows().iterator();
		Iterator<Row> iterator5 = table5.getRows().iterator();

		// 所有的外出出差等信息。
		Iterator<Row> iteratorLeave = tblLeave.getRows().iterator();

		while (iterator1.hasNext()) {
			JSONObject json = new JSONObject();
			Row info = iterator1.next();
			checkTime = info.getString("checkTime");

			json.put("fID", info.getString("fID"));
			json.put("fStatus", "正常考勤");
			json.put("fCheckTime", getDateFormat(checkTime, true));
			json.put("fUnusualMistiming", "");
			result.add(json);
		}

		while (iterator2.hasNext()) {
			JSONObject json = new JSONObject();
			Row info = iterator2.next();
			checkTime = info.getString("checkTime");
			strMistimeing = getDateDiff(checkTime.substring(0, 10) + " " + checkInAMtime, checkTime);

			json.put("fID", info.getString("fID"));
			json.put("fStatus", "迟到");
			json.put("fCheckTime", getDateFormat(checkTime, true));
			json.put("fUnusualMistiming", "迟到" + strMistimeing);
			result.add(json);
		}

		while (iterator3.hasNext()) {
			JSONObject json = new JSONObject();
			Row info = iterator3.next();
			checkTime = info.getString("checkTime");
			strMistimeing = getDateDiff(checkTime, checkTime.substring(0, 10) + " " + checkOutPMtime);

			json.put("fID", info.getString("fID"));
			json.put("fStatus", "早退");
			json.put("fCheckTime", getDateFormat(checkTime, true));
			json.put("fUnusualMistiming", "早退" + strMistimeing);
			result.add(json);
		}

		while (iterator4.hasNext()) {
			JSONObject json = new JSONObject();
			Row info = iterator4.next();
			if (checkOutPMtime != null && !checkOutPMtime.equals("")) {
				checkTime = info.getString("checkTime").substring(0, 10) + " " + checkOutPMtime;
			} else {
				checkTime = info.getString("checkTime").substring(0, 10) + " 18:00:00";
			}

			json.put("fID", info.getString("fID"));
			json.put("fStatus", "未打卡");
			json.put("fCheckTime", getDateFormat(checkTime, true));
			json.put("fUnusualMistiming", "");
			result.add(json);
		}

		// 当月旷工判断
		boolean bln = false;
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = df.parse(strDate + "-01");
			Date monthEnd = getMonthEnd(df.parse(strDate + "-01"));
			Date nowDate = df.parse(df.format(new Date()));
			Calendar c = Calendar.getInstance();

			int i = 0;
			while (!date.after(monthEnd)) {
				c.setTime(date);
				int dayOfWeek = c.get(Calendar.DAY_OF_WEEK);
				if (date.before(nowDate) && dayOfWeek != 1 && dayOfWeek != 7) {
					bln = false;
					String monthDate = df.format(date);
					iterator5 = table5.getRows().iterator();

					// 在全部打卡中寻找，如果有打卡记录那么不算旷工
					while (iterator5.hasNext()) {
						Row info = iterator5.next();
						if (monthDate.equals(df.format(df.parse(info.getString("checkTime"))))) {
							bln = true;
							break;
						}
					}
					// 如果全部打卡没找才在外出等中找
					if (!bln) {
						while (iteratorLeave.hasNext()) {
							Row info = iteratorLeave.next();
							Date dbegin = df.parse(info.getString("fStartTime"));
							Date dend = df.parse(info.getString("fEndTime"));
							// 当前日期大于等于请假的开始日期 并且小于等于请假的结束日期
							if (date.compareTo(dbegin) >= 0 && date.compareTo(dend) <= 0) {
								bln = true;
								break;
							}
						}
					}
					if (!bln) {
						JSONObject json = new JSONObject();
						json.put("fID", "" + i++);
						json.put("fStatus", "旷工");
						json.put("fCheckTime", getDateFormat(monthDate, false));
						json.put("fUnusualMistiming", "");
						result.add(json);
					}
				}
				date = getNextDay(date);
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}

	/**
	 * 查询团队考勤统计 需传入参数 1.deptFID--部门全路径ID 2.ognFID--组织全路径ID 3.strDate 4.dptID
	 * 5.ognID -- 组织ID 6.ognName --组织名称
	 * */
	public static JSONObject queryCheckStatDept(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		JSONArray result = new JSONArray();
		String strLike = "";
		String strTotal = "";
		String strActualTotal = "";
		String strActualOgn = "";
		String deptFID = params.getString("deptFID");
		String strDate = params.getString("strDate");
		String dptID = params.getString("dptID");
		String ognID = params.getString("ognID");
		String ognName = params.getString("ognName");
		String ognFID = params.getString("ognFID");

		if (deptFID == null  || "".equals(deptFID)) {// 公司统计
			strLike = "AND SA_OPOrg.sFID like '" + ognFID + "%dpt%'";
			strTotal = "SELECT '" + ognID + "' AS fOrgID,'" + ognName + "' AS fOrgName,'' AS sFID,'所有员工' AS sFName, CONCAT(COUNT(op.sPersonID),'') AS fPersonCount \n"
					 + "  from (SELECT distinct SA_OPOrg.sPersonID FROM x5sys.SA_OPOrg SA_OPOrg WHERE SA_OPOrg.sOrgKindID = 'psm' " + strLike + ") op \n union \n"; 
					
			strActualOgn = " and  c.fOrgID  =  '" + ognID + "' and c.fDeptID  <> '" + ognID + "' and c.fDeptID<>'' ";
			strActualTotal = "select c.fOrgID,c.fOrgName,'' as fDeptID,'所有员工' as fDeptName,concat(count(c.fOrgID),'') as fPersonCount "
					+ "  from OA_ChekInOut c " + " where c.fCheckInAM LIKE '" + strDate + "%' "
					+ strActualOgn + " \n" + " union \n";

		} else {// 部门统计
			strLike = "AND SA_OPOrg.sFID like '" + deptFID + "%'";
			strActualOgn = " and  c.fDeptID  =  '" + dptID + "' ";
		}
		
		// 应到人数
		String allKsql = strTotal + "select p.fOrgID,p.fOrgName,p.sFID, p.sFName,concat(count(p.sFName),'') as fPersonCount " + "  from (select '" + ognID + "' as fOrgID,'" + ognName
				+ "' as fOrgName," + "     SA_OPOrg.sFID , SA_OPOrg.sFName,substring(SA_OPOrg.sFID,1,locate('dpt',SA_OPOrg.sFID)+2) as deptFID, "
				+ "			SA_OPOrg.sName from x5sys.SA_OPOrg SA_OPOrg where SA_OPOrg.sOrgKindID = 'psm' " + strLike + ") p group by  p.deptFID ";
		// 实到人数
		String actualKsql = strActualTotal + " select fOrgID,fOrgName,sDeptID,sDeptName,concat(count(sDeptID),'') as fPersonCount from \n" + "(select c.fOrgID,c.fOrgName, \n"
				+ "	substring(o.sFID,locate('ogn',o.sFID)+4,locate('dpt',o.sFID)-locate('ogn',o.sFID)-5) as sDeptID,\n"
				+ "	substring(o.sFName,locate('/',o.sFName,2)+1,locate('/',o.sFName,locate('/',o.sFName,2)+1)-locate('/',o.sFName,2)-1) as sDeptName \n"
				+ "from OA_ChekInOut c inner join x5sys.sa_oporg o on o.sPersonID=c.fPersonID \n" + "where c.fCheckInAM LIKE '" + strDate + "%' " + strActualOgn
				+ "and substring(o.sFID,locate('ogn',o.sFID)+4,locate('dpt',o.sFID)-locate('ogn',o.sFID)-5) <> '') s \n" + "group by sDeptID";
				
		Table tableAll = DataUtils.queryData(conn, allKsql, null, null, null, null);
		Table tableActual = DataUtils.queryData(conn, actualKsql, null, null, null, null);

		Iterator<Row> iterator1 = tableAll.getRows().iterator();
		Iterator<Row> iterator2 = tableActual.getRows().iterator();

		int i = 0;
		while (iterator1.hasNext()) {
			JSONObject json = new JSONObject();
			Row info = iterator1.next();

			String sFid = info.getString("sFID") == null ? "" : info.getString("sFID");
			String sFname = info.getString("sFName") == null ? "" : info.getString("sFName");
			String[] sIds = sFid.split("/");
			String[] sNams = sFname.split("/");
			int len = sIds.length;
			String departId = "";
			String departName = "";
			int index = 0;
			for (int k = len - 1; k >= 0; k--) {
				departId = sIds[k];
				if (departId.contains(".dpt")) {
					departId = departId.replace(".dpt", "");
					index = k;
					break;
				}
			}
			departName = sNams[index];

			json.put("fID", "" + i++);
			json.put("fOrgID", info.getString("fOrgID"));
			json.put("fOrgName", info.getString("fOrgName"));
			json.put("fDeptID", departId);
			json.put("fDeptName", departName);
			json.put("fOrgPersonCount", info.getString("fPersonCount"));
			json.put("fActualPersonCount", "0");
			result.add(json);
		}

		String strOrgID = "";
		String strDeptName = "";
		String srtActualCount = "";
		while (iterator2.hasNext()) {
			Row info = iterator2.next();
			strOrgID = info.getString("fOrgID");
			strDeptName = info.getString("sDeptName");
			srtActualCount = info.getString("fPersonCount");
			for (int j = 0; j < result.size(); j++) {
				JSONObject json = result.getJSONObject(j);
				if (json.getString("fOrgID").equals(strOrgID) && json.getString("fDeptName").equals(strDeptName)) {
					json.remove("fActualPersonCount");
					json.put("fActualPersonCount", srtActualCount);
					break;
				}
			}
		}
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		return jo;
	}

	public static String getDeptIDs(Connection conn, String ognID) {
		String strDeptIDs = "";
		String ksql = "select o.sID as fID from x5sys.SA_OPOrg o where o.sParent = '" + ognID + "' and o.sOrgKindID='dpt'";
		Table table = DataUtils.queryData(conn, ksql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while (iterator.hasNext()) {
			Row info = iterator.next();
			strDeptIDs = strDeptIDs + "'" + info.getString("fID") + "',";
		}
		return strDeptIDs.substring(0, strDeptIDs.length() - 1);
	}

	public static JSONArray getResultTable(JSONArray result, String ksql, String strStatus, String sqlType, Connection conn) {
		Iterator<Row> iterator;
		iterator = DataUtils.queryData(conn, ksql, null, null, null, null).getRows().iterator();
		while (iterator.hasNext()) {
			JSONObject json = new JSONObject();
			Row row = iterator.next();
			json.put("fID", row.getString("fID"));
			json.put("fOrgID", row.getString("fOrgID"));
			json.put("fOrgName", row.getString("fOrgName"));
			json.put("fDeptID", row.getString("fDeptID"));
			json.put("fDeptName", row.getString("fDeptName"));
			json.put("fPersonID", row.getString("fPersonID"));
			json.put("fPersonName", row.getString("fPersonName"));
			json.put("fStatus", strStatus);
			result.add(json);
		}
		return result;
	}

	/**
	 * 查询团队考勤进度条 需传入参数 1.strDeptID -- 部门ID 2.strDate -- 日期 3.ognID -- 组织ID
	 * 4.ognName -- 组织名称
	 * */
	public static JSONObject queryCheckSortStat(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		JSONArray result = new JSONArray();

		String strDate = params.getString("strDate");
		String strDeptID = params.getString("strDeptID");
		String ognID = params.getString("ognID");
		String ognName = params.getString("ognName");
		
		
		String ksqlNormal = "";// 正常考勤
		String ksqlLate = "";// 迟到
		String ksqlEarly = "";// 早退
		String ksqlMissing = "";// 未打卡
		
		String strCheckInOutWhere = "";
		String strAllWhere = ""; // 取所有人的条件
		
		if (strDeptID == null || "".equals(strDeptID)) {
			strDeptID = ognID;
			strCheckInOutWhere = " and o.fOrgID = '" + strDeptID + "' and o.fDeptID  <>  '" + strDeptID + "' and o.fDeptID<>''";
			strAllWhere = "AND SA_OPOrg.sFID like '%" + strDeptID + "%dpt%'";// 领导或不在部门下的人员不统计在内
			
			
			ksqlNormal = "select o.fID,o.fOrgID,o.fOrgName,o.fDeptID,o.fDeptName,o.fPersonID,o.fPersonName \n"
					+ "   from OA_ChekInOut o where o.fCheckOutPM like '" + strDate
					+ "%' and (o.fIsLate='' or o.fIsLate is null) and (o.fIsLeaving='' or o.fIsLeaving is null) " + strCheckInOutWhere;
			
			ksqlLate = "select o.fID,o.fOrgID,o.fOrgName,o.fDeptID,o.fDeptName,o.fPersonID,o.fPersonName \n"
					+ "   from OA_ChekInOut o  where o.fCheckInAM like '" + strDate
					+ "%' and o.fIsLate='迟到'" + strCheckInOutWhere;
			
			ksqlEarly = "select o.fID,o.fOrgID,o.fOrgName,o.fDeptID,o.fDeptName,o.fPersonID,o.fPersonName \n"
					+ "   from OA_ChekInOut o  where o.fCheckOutPM like '" + strDate
					+ "%' and o.fIsLeaving='早退'" + strCheckInOutWhere;
			
			ksqlMissing = "select o.fID,o.fOrgID,o.fOrgName,o.fDeptID,o.fDeptName,o.fPersonID,o.fPersonName \n"
					+ "   from OA_ChekInOut o  where o.fCheckInAM like '" + strDate
					+ "%' and DATE_FORMAT(o.fCheckInAM,'%Y-%m-%d')<DATE_FORMAT(sysdate(),'%Y-%m-%d') and (o.fCheckOutPM='' or o.fCheckOutPM is null) " + strCheckInOutWhere;
			
		} else {
			strCheckInOutWhere = " and substring(g.sFID,locate('ogn',g.sFID)+4,locate('dpt',g.sFID)-locate('ogn',g.sFID)-5) = '" + strDeptID + "' ";
			strAllWhere = "AND SA_OPOrg.sFID like '%" + strDeptID + "%'";
			
			// 正常考勤
			ksqlNormal = "select o.fID,o.fOrgID,o.fOrgName," +
					"	substring(g.sFID,locate('ogn',g.sFID)+4,locate('dpt',g.sFID)-locate('ogn',g.sFID)-5) as fDeptID,\n" +
					"	substring(g.sFName,locate('/',g.sFName,2)+1,locate('/',g.sFName,locate('/',g.sFName,2)+1)-locate('/',g.sFName,2)-1) as fDeptName," +
					"	o.fPersonID,o.fPersonName \n" + "   from OA_ChekInOut o inner join x5sys.sa_oporg g on g.sPersonID=o.fPersonID \n" 
					+ "  where o.fCheckOutPM like '" + strDate
					+ "%' and (o.fIsLate='' or o.fIsLate is null) and (o.fIsLeaving='' or o.fIsLeaving is null) " + strCheckInOutWhere;
			// 迟到
			ksqlLate = "select o.fID,o.fOrgID,o.fOrgName," +
					"	substring(g.sFID,locate('ogn',g.sFID)+4,locate('dpt',g.sFID)-locate('ogn',g.sFID)-5) as fDeptID,\n" +
					"	substring(g.sFName,locate('/',g.sFName,2)+1,locate('/',g.sFName,locate('/',g.sFName,2)+1)-locate('/',g.sFName,2)-1) as fDeptName," +
					"o.fPersonID,o.fPersonName \n" + "   from OA_ChekInOut o inner join x5sys.sa_oporg g on g.sPersonID=o.fPersonID \n" + "  where o.fCheckInAM like '" + strDate
					+ "%' and o.fIsLate='迟到'" + strCheckInOutWhere;
			// 早退
			ksqlEarly = "select o.fID,o.fOrgID,o.fOrgName," +
					"	substring(g.sFID,locate('ogn',g.sFID)+4,locate('dpt',g.sFID)-locate('ogn',g.sFID)-5) as fDeptID,\n" +
					"	substring(g.sFName,locate('/',g.sFName,2)+1,locate('/',g.sFName,locate('/',g.sFName,2)+1)-locate('/',g.sFName,2)-1) as fDeptName," +
					"o.fPersonID,o.fPersonName \n" + "   from OA_ChekInOut o  inner join x5sys.sa_oporg g on g.sPersonID=o.fPersonID \n" + "  where o.fCheckOutPM like '" + strDate
					+ "%' and o.fIsLeaving='早退'" + strCheckInOutWhere;
			// 未打卡
			ksqlMissing = "select o.fID,o.fOrgID,o.fOrgName," +
					"	substring(g.sFID,locate('ogn',g.sFID)+4,locate('dpt',g.sFID)-locate('ogn',g.sFID)-5) as fDeptID,\n" +
					"	substring(g.sFName,locate('/',g.sFName,2)+1,locate('/',g.sFName,locate('/',g.sFName,2)+1)-locate('/',g.sFName,2)-1) as fDeptName," +
					"o.fPersonID,o.fPersonName \n" + "   from OA_ChekInOut o  inner join x5sys.sa_oporg g on g.sPersonID=o.fPersonID \n" + "  where o.fCheckInAM like '" + strDate
					+ "%' and DATE_FORMAT(o.fCheckInAM,'%Y-%m-%d')<DATE_FORMAT(sysdate(),'%Y-%m-%d') and (o.fCheckOutPM='' or o.fCheckOutPM is null) " + strCheckInOutWhere;
		}

		
		result = getResultTable(result, ksqlNormal, "正常考勤", "ksql", conn);
		result = getResultTable(result, ksqlLate, "迟到", "ksql", conn);
		result = getResultTable(result, ksqlEarly, "早退", "ksql", conn);
		result = getResultTable(result, ksqlMissing, "未打卡", "ksql", conn);

		String allKsql = " select sID as fID, SA_OPOrg.sFID , SA_OPOrg.sFName, \n" + "	 '" + ognID + "' as fOrgID, '" + ognName + "' as fOrgName, \n	" + " SA_OPOrg.sPersonID as fPersonID,SA_OPOrg.sName as fPersonName\n "
				+ " from x5sys.SA_OPOrg SA_OPOrg  where SA_OPOrg.sOrgKindID = 'psm' \n" + strAllWhere;

		Iterator<Row> iterator;
		iterator = DataUtils.queryData(conn, allKsql, null, null, null, null).getRows().iterator();

		while (iterator.hasNext()) {

			// 获取PersonId，比较PersonId即可。
			Row row = iterator.next();

			String sFid = row.getString("sFID") == null ? "" : row.getString("sFID");
			String sFname = row.getString("sFName") == null ? "" : row.getString("sFName");
			String[] sIds = sFid.split("/");
			String[] sNams = sFname.split("/");
			int len = sIds.length;
			String departId = "";
			String departName = "";
			int index = 0;
			for (int i = len - 1; i >= 0; i--) {
				departId = sIds[i];
				if (departId.contains(".dpt")) {
					departId = departId.replace(".dpt", "");
					index = i;
					break;
				}
			}
			departName = sNams[index];
			boolean exists = false; // 初始表示不存在。只有不存在下面的数据中才可以。

			for (int i = 0; i < result.size(); i++) {
				JSONObject json = result.getJSONObject(i);
				if (json.getString("fPersonID") != null && (json.getString("fPersonID").equals(row.getString("fPersonID")))) {
					exists = true;
					break;
				}
			}

			if (!exists) {
				JSONObject json = new JSONObject();
				json.put("fID", row.getString("fID"));
				json.put("fOrgID", row.getString("fOrgID"));
				json.put("fOrgName", row.getString("fOrgName"));
				json.put("fDeptID", departId);
				json.put("fDeptName", departName);

				json.put("fPersonID", row.getString("fPersonID"));
				json.put("fPersonName", row.getString("fPersonName"));
				json.put("fStatus", "旷工");
				result.add(json);
			}

		}
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		return jo;
	}
}
