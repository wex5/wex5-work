import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.Element;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.biz.client.Action;
import com.justep.biz.client.ActionEngine;
import com.justep.biz.client.ActionResult;
import com.justep.biz.client.ActionUtils;
import com.justep.ui.JustepConfig;
import com.justep.ui.system.service.permission.FunctionTree;
import com.justep.ui.system.service.permission.MenuUtils;
import com.justep.ui.util.NetUtils;


public class WorkFavorite extends com.justep.ui.impl.JProcessorImpl  {
		public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String language = request.getParameter("language");

		String bsessionID = NetUtils.getBSessionID(request);
		Action queryWorksAction = new Action();
		queryWorksAction.setProcess("/OA/workHome/process/workHome/workHomeProcess");
		queryWorksAction.setActivity("mainActivity");
		queryWorksAction.setName("queryWorksAction");
		
		ActionResult result = ActionEngine.invokeAction(queryWorksAction, ActionUtils.JSON_CONTENT_TYPE, bsessionID, language, null);
		
		JSONObject content = (JSONObject)result.getContent();
		JSONObject data = (JSONObject)content.get("data");
		JSONObject value = (JSONObject)data.get("value");
		JSONArray rows = (JSONArray)value.get("rows");
		Iterator<Object> it = rows.iterator();
		
		Document tree =  (Document)MenuUtils.getMenus(request, "/"+JustepConfig.getUIValue(NetUtils.getRequestPath(request)), null);
		while(it.hasNext()){
			JSONObject row = (JSONObject)it.next();
			JSONObject fProcess = (JSONObject)row.get("fProcess");
			String process = (String)fProcess.get("value");
			JSONObject fActivity = (JSONObject)row.get("fActivity");
			String activity = (String)fActivity.get("value");
			JSONObject fUrl = (JSONObject)row.get("fUrl");
			
			String url = null;
			if(fUrl != null)
				url = (String)fUrl.get("value");
			Element fun = null;
//			System.out.println("//*[@process='"+ process +"' and @activity='" + activity + "' and @url='" + url + "']");	
			if(url == null)
				fun = (Element)tree.selectSingleNode("//*[@process='"+ process +"' and @activity='" + activity + "']");
			else
				fun = (Element)tree.selectSingleNode("//*[@process='"+ process +"' and @activity='" + activity + "' and @url='" + url + "']");
			if(fun != null){
				String iconClass = "";
				url = "";
				String label = "";
				String color = "";
				if(fun.attribute("iconClass") != null)
					iconClass = fun.attribute("iconClass").getValue();
				if(fun.attribute("url") != null)
					url = fun.attribute("url").getValue();
				if(fun.attribute("label") != null)
					label = fun.attribute("label").getValue();
				if(fun.attribute("color") != null)
					color = fun.attribute("color").getValue();
				
				url = FunctionTree.processAURL(request, url, NetUtils.getDeviceType(request), JustepConfig.getUIValue(NetUtils.getRequestPath(request)));
				row.put("fUrl", field(url));
				row.put("fIconClass", field(iconClass));
				row.put("fLabel", field(label));
				row.put("fColor", field(color));
			}
		}
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType(ActionUtils.JSON_CONTENT_TYPE);
		OutputStream output = response.getOutputStream();
		output.write(content.toString().getBytes("UTF-8"));
		output.flush();
		output.close();
		
	}
	
	private JSONObject field(String value){
		JSONObject result = new JSONObject();
		result.put("changed", 1);
		result.put("value", value);
		return result;
	}
}
