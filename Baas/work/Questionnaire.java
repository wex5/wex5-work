package work;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Iterator;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;

public class Questionnaire {
	// 数据模块
	private static final String DATASOURCE_ATTENDANCE = "work";

	/*
	 * // 问卷查询字段 private static final String QuestionnaireFields = //问卷Id 问卷名称
	 * 问卷欢迎词 问卷状态 受访人数即答卷人数
	 * "questionnaire.fID, questionnaire.fTile, questionnaire.fWelcome, questionnaire.fState, questionnaire.fAnswerCount, "
	 * //创建人 修改人 创建日期 修改日期 +
	 * "questionnaire.fCreatePsnName, questionnaire.fUpdatePsnName, questionnaire.fCreateTime, questionnaire.fUpdateTime"
	 * ;
	 */

	/**
	 * 查看某人的单个问卷
	 * 返回整张问卷的所有问题，问题的选项等信息。
	 * @param params
	 * @param context
	 * @return
	 * @throws SQLException
	 * @throws NamingException
	 */
	public static JSONObject queryPersonQuestionnaire(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		JSONArray result = new JSONArray();
		String questionnaireID = params.getString("questionnaireID");

		String sql = " select questionnaire.fID, questionnaire.fTile, questionnaire.fWelcome, questionnaire.fState, questionnaire.fAnswerCount, \n"
				+ " questionnaire.fCreatePsnName, questionnaire.fUpdatePsnName, questionnaire.fCreateTime, questionnaire.fUpdateTime, \n"

				+ "question.fQuestionnaireID, question.fQuestionTypeId, question.fTypeSign, question.fTypeName \n"
				+ " question.questionID, question.fMaxSelectCount, question.fQuestionScore, question.fAnswerCount, question.fMustAnswer, \n"
				+ ", question.optionID, question.fOptionTile, question.fOrder,  question.fOptionOrder \n"

				+ "from oa_qn_questionnaire questionnaire left join \n"

				+ "(  select  " + "  question.fID, question.fQuestionnaireID, question.fQuestionTypeId  , question.fOrder, \n"
				+ "  question.fMaxSelectCount, question.fQuestionScore, question.fAnswerCount, question.fMustAnswer,\n "
				+ "	questiontype.fTypeSign, questiontype.fTypeName \n"
				+ "  , querstionoption.fID as optionID, querstionoption.fOptionTile, querstionoption.fOrder as fOptionOrder \n"
				+ "	from oa_qn_question question inner join oa_qn_questiontype \n"
				+ "	questiontype on question.fQuestionTypeId = questiontype.fID  and  question.fQuestionnaireID = '" + questionnaireID + "' \n" 
				+ "	left join oa_qn_option querstionoption on question.fID = querstionoption.fQuestionID and  querstionoption.fQuestionnaireID = '" + questionnaireID + "' ) question  \n"
				+ "	on questionnaire.fID = question.fQuestionnaireID  and  questionnaire.fID  = '" + questionnaireID + "' \n"
				
				+ " where questionnaire.fID = '" + questionnaireID + "' " + "	order by  question.fOrder, question.fOrder";

		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while (iterator.hasNext()) {
			Row info = iterator.next();
			JSONObject json = new JSONObject();
			json.put("fID", info.getString("fID")); //问卷ID
			json.put("fTile", info.getString("fTile"));
			json.put("fWelcome", info.getString("fWelcome"));
			json.put("ffStateDepart", info.getString("fDepart"));
			json.put("fAnswerCount", info.getString("fAnswerCount"));
			json.put("fCreatePsnName", info.getString("fCreatePsnName"));
			json.put("fUpdatePsnName", info.getString("fUpdatePsnName"));
			json.put("fCreateTime", info.getString("fCreateTime"));
			json.put("fUpdateTime", info.getString("fUpdateTime"));
			
			json.put("fQuestionTypeId", info.getString("fQuestionTypeId"));
			json.put("fTypeSign", info.getString("fTypeSign"));
			json.put("fTypeName", info.getString("fTypeName"));
			
			json.put("questionID", info.getString("questionID"));
			json.put("fMaxSelectCount", info.getString("fMaxSelectCount"));
			json.put("fQuestionScore", info.getString("fQuestionScore"));
			json.put("fAnswerCount", info.getString("fAnswerCount"));
			json.put("fMustAnswer", info.getString("fMustAnswer"));
			
			json.put("optionID", info.getString("optionID"));
			json.put("fOptionTile", info.getString("fOptionTile"));
			json.put("fOptionOrder", info.getString("fOptionOrder"));
			
			result.add(json);
		}

		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}
	
	
	public static JSONObject queryPersonQuestionnaireResult(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ATTENDANCE);
		JSONArray result = new JSONArray();
		String questionnaireID = params.getString("questionnaireID");
		

		String sql = " select questionnaire.fID, questionnaire.fTile, questionnaire.fWelcome, questionnaire.fState, questionnaire.fAnswerCount,\n"
				+ " questionnaire.fCreatePsnName, questionnaire.fUpdatePsnName, questionnaire.fCreateTime, questionnaire.fUpdateTime, \n"
				+ " question.fQuestionnaireID, question.fQuestionTypeId, question.fTypeSign, question.fTypeName , \n"
				+ " question.questionID, question.fMaxSelectCount, question.fQuestionScore, question.fAnswerCount, question.fMustAnswer, question.fOrder, \n"
				+ " question.optionId, question.fOptionTile,  question.fOptionOrder, \n"
				+ " question.count, question.scope \n"
				+ " from oa_qn_questionnaire questionnaire left join \n "

				+ " (  select \n"
				+ " question.fID as questionID , question.fQuestionnaireID, question.fQuestionTypeId  , question.fOrder,   question.fMaxSelectCount, question.fQuestionScore, question.fAnswerCount, \n"
				+ " question.fMustAnswer, " + " questiontype.fTypeSign, questiontype.fTypeName \n"

				+ " , answer.optionId, answer.fOptionTile,   answer.fOptionOrder \n"

				+ " , answer.count, answer.scope \n" + " from oa_qn_question question inner join oa_qn_questiontype "
				+ " questiontype on question.fQuestionTypeId = questiontype.fID and  question.fQuestionnaireID = '" + questionnaireID + "' \n"

				+ " left join  \n"

				+ " ( \n"
				+ " SELECT querstionoption.fQuestionnaireID, querstionoption.fQuestionID, querstionoption.fID as optionId , \n"

				+ " querstionoption.fOptionTile, querstionoption.fOrder as fOptionOrder \n"

				+ " , count(1) as count, avg(answer.fScope) as scope from oa_qn_answer answer \n"

				+ "  inner join oa_qn_question question on question.fID = answer.fQuestionID and  question.fQuestionnaireID = '" + questionnaireID + "' \n"
				+ " inner join oa_qn_questiontype questiontype on question.fQuestionTypeId = questiontype.fID \n"

				+ " left join oa_qn_option querstionoption on answer.fOptionID = querstionoption.fID and querstionoption.fQuestionnaireID = '" + questionnaireID + "' \n"

				+ " where  querstionoption.fQuestionnaireID = '" + questionnaireID + "' \n"
				+ " group by  querstionoption.fQuestionnaireID, querstionoption.fQuestionID, querstionoption.fID  , querstionoption.fOptionTile, querstionoption.fOrder \n"

				+ " union \n"

				+ " SELECT question.fQuestionnaireID,  question.fID as  fQuestionID, null as  optionId , null as fOptionTile , null as fOptionOrder,  count(1) as count, avg(answer.fScope) as scope from oa_qn_answer answer \n"

				+ " inner join oa_qn_question question on question.fID = answer.fQuestionID and  question.fQuestionnaireID = '" + questionnaireID + "' \n"

				+ " inner join oa_qn_questiontype questiontype on question.fQuestionTypeId = questiontype.fID and questiontype.fTypeSign in ( 3 ,4) \n"

				+ " where  question.fQuestionnaireID = '" + questionnaireID + "'  \n"

				+ " group by question.fQuestionnaireID,  question.fID  \n"

				+ " ) answer \n"

				+ " on question.fQuestionnaireID = answer.fQuestionnaireID and question.fID = answer.fQuestionID   \n"

				+ " )	question on questionnaire.fID = question.fQuestionnaireID and   questionnaire.fID  = '" + questionnaireID + "'    and question.fTypeSign in ( 1 ,2) \n"

				+ " where questionnaire.fID = '" + questionnaireID + "' \n"

				+ " order by  question.fOrder, question.fOptionOrder \n";

					
	

		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while (iterator.hasNext()) {
			Row info = iterator.next();
			JSONObject json = new JSONObject();
			json.put("fID", info.getString("fID")); //问卷ID
			json.put("fTile", info.getString("fTile"));
			json.put("fWelcome", info.getString("fWelcome"));
			json.put("ffStateDepart", info.getString("fDepart"));
			json.put("fAnswerCount", info.getString("fAnswerCount"));
			json.put("fCreatePsnName", info.getString("fCreatePsnName"));
			json.put("fUpdatePsnName", info.getString("fUpdatePsnName"));
			json.put("fCreateTime", info.getString("fCreateTime"));
			json.put("fUpdateTime", info.getString("fUpdateTime"));
			
			json.put("fQuestionTypeId", info.getString("fQuestionTypeId"));
			json.put("fTypeSign", info.getString("fTypeSign"));
			json.put("fTypeName", info.getString("fTypeName"));
			
			json.put("optionId", info.getString("optionId"));
			json.put("fOptionTile", info.getString("fOptionTile"));
			json.put("fOptionOrder", info.getString("fOptionOrder"));
			
			result.add(json);
		}

		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}
}
