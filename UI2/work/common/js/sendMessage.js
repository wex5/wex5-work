define(function(require) {
    //var IM = require("./../../../chat/js/im");
	var IM = require("$UI/chat/base/js/im");
	var IMDelay = require("$UI/OA/common/js/sendMessageDelay");
	var biz = require("$UI/system/lib/biz");
	var justep = require("$UI/system/lib/justep");
	return {
		//step, 表示环节，没有值，表示当前环节，prev表示上一环节
		sendExamineMessage: function(ctx, sheetId, activityName, msg, step) {
			var params = new biz.Request.ActionParam();
			params.setParam('sheetId', sheetId);
			params.setParam('activityName', activityName);
			if(step){
				params.setParam('step', step);
			}
			biz.Request.sendBizRequest({
				"context" : ctx,
				"action" : "queryActivityExecutorPersonIDs",
				"parameters" : params,
				"callback" : function(data) {
					//debugger;
					if (data.state) {
						var resultData = data.response["sExecutorPersonIDs"];
						if (resultData) {
							var personIdArr = resultData.split(",");
							   //this.sendMsgToPersonArr(personIdArr, msg);
							for (var i = 0; i < personIdArr.length; i++){
								try{ 
									IM.sendTextMessageToPerson(personIdArr[i],msg);  
								} catch (e) {
									//alert("发布知识出错!"+e.message);
									continue;
								}
							}
						}
					}
				}
			});
			//return returnValue;
		},
		//
		sendMessageToAllPersons: function(ctx, msg) {
			biz.Request.sendBizRequest({
				"context" : ctx,
				"action" : "queryAllPersonIDs",
				"parameters" : null,
				"callback" : function(data) {
					if (data.state) {
						var resultData = data.response["sAllPersonIDs"];
						if (resultData) {
							var personIdArr = resultData.split(",");
							var internal = 10000;
							for (var i = 0; i < personIdArr.length; i++){
								IMDelay.sendDelayMsgToPerson(personIdArr[i], msg, internal*i);
							}
						}
					}
				}
			});
			//return returnValue;
		},
		getDateRangeDesciption: function(dateBegin, dateEnd, rank) {
			var hintYear = "";
			var hintMonth1 = "";
			var hintMonth2 = "";
			var hintDay1 = "";
			var hintDay2 = "";
			var hintHour1 = "";
			var hintHour2 = "";
			var hintMinute1 = "";
			var hintMinute2 = "";
			var thisDate = new Date();
		
			//如果分钟数是0就不在显示分钟数。
			if (justep.Date.toString(dateBegin, "mm") != "00") {
				hintMinute1 = justep.Date.toString(dateBegin, "mm分");
			}  
			if (justep.Date.toString(dateEnd, "mm") != "00") {
				hintMinute2 = justep.Date.toString(dateEnd, "mm分");
			}  
			
			var hint = "";
			if (justep.Date.toString(dateBegin, "yyyy") != justep.Date.toString(dateEnd, "yyyy")) {
				hint = justep.Date.toString(dateBegin, "yyyy年MM月dd日HH时") + hintMinute1
				    + "至：" + justep.Date.toString(dateBegin, "yyyy年MM月dd日HH时") + hintMinute2 ;
			} else {
				//如果不是今年，提示年份。
				if (justep.Date.toString(thisDate, "yyyy") != justep.Date.toString(dateEnd, "yyyy")) {
					hintYear = justep.Date.toString(dateBegin, "yyyy年");
				} 
				//开始日期的月份一直显示；如果月份不同，结束日期显示月份。
				hintMonth1 = justep.Date.toString(dateBegin, "MM月");
				if (justep.Date.toString(dateBegin, "MM") != justep.Date.toString(dateEnd, "MM")) {
					hintMonth2 = justep.Date.toString(dateEnd, "MM月");
					//如果月份不同那么，那么开始、结束的日期、小时等都要显示。
					hintDay1 = justep.Date.toString(dateBegin, "dd日");
					hintDay2 = justep.Date.toString(dateEnd, "dd日");
					hintHour1 = justep.Date.toString(dateBegin, "HH时");
					hintHour2 = justep.Date.toString(dateEnd, "HH时");
				} else { //这是月份相同时。比较是不是同一天。
					hintDay1 = justep.Date.toString(dateBegin, "dd日");
					//不是同一天，那么后面信息都保留。
					if (justep.Date.toString(dateBegin, "dd") != justep.Date.toString(dateEnd, "dd")) {
						hintDay2 = justep.Date.toString(dateEnd, "dd日");
						hintHour1 = justep.Date.toString(dateBegin, "HH时");
						hintHour2 = justep.Date.toString(dateEnd, "HH时");
					}  else { //是同一天，在比较是不是同一个小时。
						//开始日期的小时一直显示；如果小时不同，则显示后面的信息
						hintHour1 = justep.Date.toString(dateBegin, "HH时");
						if (justep.Date.toString(dateBegin, "HH") != justep.Date.toString(dateEnd, "HH")) {
							hintHour2 = justep.Date.toString(dateEnd, "HH时");
						} 
					}
				}
				//分钟是一直保留的。 
				if (!rank){
					hint = hintYear + hintMonth1 + hintDay1 + hintHour1 +  hintMinute1
     					+ "至" + hintMonth2 + hintDay2 + hintHour2 +  hintMinute2
				} else {
					if (rank == "日") {
						hint = hintYear + hintMonth1 + hintDay1  
     					+ "至" + hintMonth2 + hintDay2;
					}
				}
			}
			return hint;
		},
		sendMsgToPerson: function (personId, msg){
			IM.sendTextMessageToPerson(personId,msg);  
		},
		sendMsgToPersonDelay: function (personId, msg, delay){
			var internal = 1000; 
			if (delay){
				internal = delay;
			}
			setTimeout(function () {  
				IM.sendTextMessageToPerson(personId,msg);  
				}, internal);
			
		},
		sendMsgToPersonArr: function(personIdArr, msg){
			for (var i = 0; i < personIdArr.length; i++){
				IM.sendTextMessageToPerson(personIdArr[i],msg);  
			}
		}
	};
});
