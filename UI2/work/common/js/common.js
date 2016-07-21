define(function(require) {
	var justep = require("$UI/system/lib/justep");
	var IM = require("$UI/chat/base/js/im");
	var login = require("$UI/work/common/js/login");

	return {
		personFID : IM.getCurrentInfo().CurrentPersonFID ? IM.getCurrentInfo().CurrentPersonFID : login.loadLoginDataByStore().CurrentPersonFID,
		personFName : IM.getCurrentInfo().CurrentPersonFName ? IM.getCurrentInfo().CurrentPersonFName : login.loadLoginDataByStore().CurrentPersonFName,
		personID : IM.getCurrentInfo().CurrentPersonID ? IM.getCurrentInfo().CurrentPersonID : login.loadLoginDataByStore().CurrentPersonID,
		personName : IM.getCurrentInfo().CurrentPersonName ? IM.getCurrentInfo().CurrentPersonName : login.loadLoginDataByStore().CurrentPersonName,

		deptFID : IM.getCurrentInfo().CurrentDeptFID ? IM.getCurrentInfo().CurrentDeptFID : login.loadLoginDataByStore().CurrentDeptFID,
		deptFName : IM.getCurrentInfo().CurrentDeptFName ? IM.getCurrentInfo().CurrentDeptFName : login.loadLoginDataByStore().CurrentDeptFName,
		deptID : IM.getCurrentInfo().CurrentDeptID ? IM.getCurrentInfo().CurrentDeptID : login.loadLoginDataByStore().CurrentDeptID,
		deptName : IM.getCurrentInfo().CurrentDeptName ? IM.getCurrentInfo().CurrentDeptName : login.loadLoginDataByStore().CurrentDeptFName,

		ognFID : IM.getCurrentInfo().CurrentOgnFID ? IM.getCurrentInfo().CurrentOgnFID : login.loadLoginDataByStore().CurrentOgnFID,
		ognFName : IM.getCurrentInfo().CurrentOgnFName ? IM.getCurrentInfo().CurrentOgnFName : login.loadLoginDataByStore().CurrentOgnFName,
		ognID : IM.getCurrentInfo().CurrentOgnID ? IM.getCurrentInfo().CurrentOgnID : login.loadLoginDataByStore().CurrentOgnID,
		ognName : IM.getCurrentInfo().CurrentOgnName ? IM.getCurrentInfo().CurrentOgnName : login.loadLoginDataByStore().CurrentOgnName,

		funRole : IM.getCurrentInfo().CurrentFunRole ? IM.getCurrentInfo().CurrentFunRole : login.loadLoginDataByStore().CurrentFunRole,

		// 获取系统当前时间
		getSysDate : function() {
			var date;
			justep.Baas.sendRequest({
				"url" : "/work/common",
				"action" : "getSysDateTime",
				"async" : false,
				"params" : {},
				"success" : function(data) {
					date = new Date(data.time);
				}
			});
			return date;
		},

		// 获取系统当前时间的字符串，格式自定
		getSysDateStr : function(str) {
			var date;
			justep.Baas.sendRequest({
				"url" : "/work/common",
				"action" : "getSysDateFormat",
				"async" : false,
				"params" : {
					"dateStr" : str
				},
				"success" : function(data) {
					date = data.time;
				}
			});
			return String(date);
		},

		// 日期转换星期
		transWeek : function(date) {
			var week = date.getDay();
			switch (week) {
			case 1:
				week = "一";
				break;
			case 2:
				week = "二";
				break;
			case 3:
				week = "三";
				break;
			case 4:
				week = "四";
				break;
			case 5:
				week = "五";
				break;
			case 6:
				week = "六";
				break;
			case 0:
				week = "日";
				break;
			}
			;
			return '星期' + week;
		},

		// baas请求
		baasRequest : function(server, action, params) {
			var result = null;
			justep.Baas.sendRequest({
				"url" : "/work/" + server,
				"action" : action,
				"async" : false,
				"params" : params,
				"success" : function(data) {
					result = data;
				}
			})
			return result;
		},

		// 保存用户人员相关信息
		savePerson : function(data, row) {
			if (row == undefined) {
				data.setValue("fPersonID", IM.getCurrentInfo().CurrentPersonID, row);
				data.setValue("fPersonName", IM.getCurrentInfo().CurrentPersonName, row);
			} else {
				data.setValue("fPersonID", IM.getCurrentInfo().CurrentPersonID);
				data.setValue("fPersonName", IM.getCurrentInfo().CurrentPersonName);
			}
		},

		// 保存用户部门相关信息
		saveDept : function(data, row) {
			if (row == undefined) {
				data.setValue("fDeptID", IM.getCurrentInfo().CurrentDeptID, row);
				data.setValue("fDeptName", IM.getCurrentInfo().CurrentDeptName, row);
			} else {
				data.setValue("fDeptID", IM.getCurrentInfo().CurrentDeptID);
				data.setValue("fDeptName", IM.getCurrentInfo().CurrentDeptName);
			}
		},

		// 保存用户组织相关信息
		saveOgn : function(data, row) {
			if (row == undefined) {
				data.setValue("fOrgID", IM.getCurrentInfo().CurrentOgnID, row);
				data.setValue("fOrgName", IM.getCurrentInfo().CurrentOgnName, row);
			} else {
				data.setValue("fOrgID", IM.getCurrentInfo().CurrentOgnID);
				data.setValue("fOrgName", IM.getCurrentInfo().CurrentOgnName);
			}
		},

		removeArrEle : function(arr, index) {
			var result = [];
			for (var i = 0; i < arr.length; i++) {
				if (i != index) {
					result.push(arr[i]);
				}
			}
			return result;
		}

	}
});