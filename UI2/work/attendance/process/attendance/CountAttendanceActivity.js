define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/lib/base/util");
	var con = require("$UI/work/common/js/common");
	var Model = function() {
		this.callParent();
		this.deptID;
		this.rowID;
	};

	Model.prototype.formatDate = function(date) {
		var str = "", week = "";
		str = justep.Date.toString(date, "yyyy-MM-dd")//fromString("yyyy-MM-dd", date);
		switch (date.getDay()) {
		case 1:
			week = "星期一";
			break;
		case 2:
			week = "星期二";
			break;
		case 3:
			week = "星期三";
			break;
		case 4:
			week = "星期四";
			break;
		case 5:
			week = "星期五";
			break;
		case 6:
			week = "星期六";
			break;
		case 0:
			week = "星期日";
			break;
		}
		return week + "  " + str;
	};

	Model.prototype.modelParamsReceive = function(event) {
		var date = new Date();
		var str = this.formatDate(date);
		this.comp("scheTitleBar").set({
			"title" : str
		});
	};
	// 前后选择时间按钮
	Model.prototype.prevBtnClick = function(event) {
		var self = this;
		var date = this.comp("scheTitleBar").get("title");
		date = date.split("  ")[1];
		var prevDate = new Date(date);
		prevDate.setDate(prevDate.getDate() - 1);
		var str = this.formatDate(prevDate);
		this.comp("scheTitleBar").set({
			"title" : str
		});
		date = justep.Date.toString(prevDate, "yyyy-MM-dd");
		var deptID = this.comp("deptStatusData").val("fDeptID");
		this.personStatusRequestLoad("queryCheckSortStat", date,deptID);
		this.deptStatusRequestLoad("queryCheckStatDept", date);
		this.comp("deptStatusData").first();
		this.comp("deptStatusData").to(this.rowID);
	};

	Model.prototype.nextBtnClick = function(event) {
		var date = this.comp("scheTitleBar").get("title");
		date = date.split("  ")[1];
		var prevDate = new Date(date);
		prevDate.setDate(prevDate.getDate() + 1);
		
		var nowDate = new Date(con.getSysDateStr("yyyy-MM-dd"));
		
		if (prevDate <= nowDate) {
			var str = this.formatDate(prevDate);
			this.comp("scheTitleBar").set({
				"title" : str
			});
			date = justep.Date.toString(prevDate, "yyyy-MM-dd");
			var deptID = this.comp("deptStatusData").val("fDeptID");
			this.personStatusRequestLoad("queryCheckSortStat", date,deptID);
			this.deptStatusRequestLoad("queryCheckStatDept", date);
			this.comp("deptStatusData").first();
			this.comp("deptStatusData").to(this.rowID);
		} else {
			util.hint("考勤统计数截止到今日");
		}
	};

	// 请求部门数据
	Model.prototype.deptStatusRequestLoad = function(action, date) {
		var self = this;
		/*
		 * 查询团队考勤统计 需传入参数 1.deptFID--部门全路径ID 2.ognFID--组织全路径ID 3.strDate 4.dptID
		 * 5.ognID -- 组织ID 6.ognName --组织名称
		 */
		justep.Baas.sendRequest({
			"url" : "/work/attendance",
			"action" : action,
			"async" : false,
			"params" : {
				deptFID : con.deptFID,
				ognFID : con.ognFID,
				strDate : date,
				dptID : con.deptID,
				ognID : con.ognID,
				ognName : con.ognName
			},
			"success" : function(data) {
				self.comp("deptStatusData").loadData(data);
			}
		});
	};

	Model.prototype.deptStatusDataCustomRefresh = function(event) {
		// alert(1);
		this.deptStatusRequestLoad("queryCheckStatDept", con.getSysDateStr("yyyy-MM-dd"));

	};
	// 选择部门
	Model.prototype.selDeptBtnClick = function(event) {
		var date = justep.Date.toString(justep.Date.fromString(this.comp("scheTitleBar").title.split("  ")[1], "yyyy-M-d"), "yyyy-MM-dd");
		this.comp("selDeptDialog").open({
			"data" : date
		});
	};

	Model.prototype.selDeptDialogReceive = function(event) {
		var self = this;
		var deptID = event.data[0];
		var rowID = event.data[1];
		this.rowID = rowID;
		this.deptID = deptID;
		window.setTimeout(function() {
			self.comp("deptStatusData").to(rowID);
		}, 1);
		var date = justep.Date.toString(justep.Date.fromString(this.comp("scheTitleBar").title.split("  ")[1], "yyyy-M-d"), "yyyy-MM-dd");
		this.personStatusRequestLoad("queryCheckSortStat", date, deptID);
		this.deptStatusRequestLoad("queryCheckStatDept", date);
	};

	// 请求人员状态数据
	Model.prototype.personStatusRequestLoad = function(action, date, deptID) {
		var self = this;
		/*
		 * 查询团队考勤进度条 需传入参数 1.strDeptID -- 部门ID 2.strDate -- 日期 3.ognID -- 组织ID
		 * 4.ognName -- 组织名称
		 */
		var dpt;
		if (deptID) {
			dpt = deptID;
		} else {
			dpt = con.deptID;
		}
		justep.Baas.sendRequest({
			"url" : "/work/attendance",
			"action" : action,
			"async" : false,
			"params" : {
				"strDate" : date,
				"strDeptID" : dpt,
				"ognID" : con.ognID,
				"ognName" : con.ognName
			},
			"success" : function(data) {
				self.comp("attenStatusData").loadData(data);
			}
		});
	};

	Model.prototype.attenStatusDataCustomRefresh = function(event) {
		this.rowID = 0;
		// 获取当前人的部门ID
		this.dept = con.deptID;
		this.personStatusRequestLoad("queryCheckSortStat", con.getSysDateStr("yyyy-MM-dd"),this.dept);

	};

	// 显示具体的内容
	Model.prototype.showCountListClick = function(event) {
		var status = this.comp("AllStatusData").getValue("fStatus");
		if (status == "正常") {
			status = "正常考勤";
		}
		var count = this.comp("attenStatusData").count(function(e) {
			var v = e.source.getValue("fStatus", e.row);
			return v.indexOf(status) === 0;
		});
		if (count === 0) {
			util.hint("没有人" + status, {
				"delay" : 1500
			});
			return;
		}
		var date = justep.Date.toString(justep.Date.fromString(this.comp("scheTitleBar").title.split("  ")[1], "yyyy-MM-dd"), "yyyy-MM-dd");
		this.comp("detailStatusDialog").open({
			"data" : [ status, date, this.deptID?this.deptID:con.deptID ]
		});
	};

	Model.prototype.contentsGPActiveChange = function(event) {
		var to = event.to;
		if (to == 1) {
			// 优化内存占用
			$('.x-window-container', this.comp('contentsGP').$domNode).css('display', 'none');
			this.comp('personWindow').$domNode.css('display', 'block');
			this.comp("personWindow").refresh();
		}
	};

	Model.prototype.modelLoad = function(event) {
		$("[xid=waitDiv]").hide();
		$("[xid=panel1]").show();
	};

	Model.prototype.rankRowClick = function(event) {
		// justep.Shell.showPage("$UI/work/attendance/process/attendance/rankListActivity.m.w");
	};

	return Model;
});