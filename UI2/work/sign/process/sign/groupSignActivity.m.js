define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");
	var Model = function() {
		this.callParent();
		this.date;
	};

	Model.prototype.transWeek = function(date) {
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
		return week;
	}

	Model.prototype.modelLoad = function(event) {

		var time = justep.Date.toString(this.date, "yyyy-MM-dd");
		$(this.getElementByXid("dateSpang")).html(time);
		var week = this.transWeek(this.date);
		$(this.getElementByXid("weekSpang")).html("星期" + week);
		this.comp("datePickerg").setValue(this.params.data);

		$(this.getElementByXid("waitDiv")).hide();
		$(this.getElementByXid("content1")).show();
	};

	Model.prototype.datePickergOK = function(event) {
		var date = event.source.getValue();
		if (date > new Date) {
			justep.Util.hint(("只能选择今天以前的时间"), {
				"type" : "danger"
			});
			return;
		}
		this.date = date;
		$(this.getElementByXid("dateSpang")).html(justep.Date.toString(date, "yyyy-MM-dd"));
		var week = this.transWeek(date);
		$(this.getElementByXid("weekSpang")).html("星期" + week);

		this.RequestLoad("queryDeptLatestSignAction", "hasSignData", justep.Date.toString(date, "yyyy-MM-dd"));// "deptLatestSign",
		this.RequestLoad("queryDeptNotSignAction", "unSignData", justep.Date.toString(date, "yyyy-MM-dd"));// "deptNotSign",

	};

	Model.prototype.signPeopleListClick = function(event) {
		var fPersonID = this.comp("hasSignData").val("fPersonID");
		justep.Shell.showPage("$UI/work/sign/process/sign/statisticsPerSignActivity.m.w", {
			"data" : [ fPersonID, this.date ]
		});
	};

	Model.prototype.hasSignDataCustomRefresh = function(event) {

		this.date = this.params.data;
		this.RequestLoad("queryDeptLatestSignAction", "hasSignData", justep.Date.toString(this.date, "yyyy-MM-dd"));
	};

	Model.prototype.unSignDataCustomRefresh = function(event) {

		this.date = this.params.data;
		this.RequestLoad("queryDeptNotSignAction", "unSignData", justep.Date.toString(this.date, "yyyy-MM-dd"));
	};

	Model.prototype.RequestLoad = function(action, dataCom, date) {
		var self = this;
		var fPersonID = con.personID;
		var fDeptID = con.deptID;
		var fOgnID = con.ognID;
		justep.Baas.sendRequest({
			"url" : "/work/sign",
			"action" : action,
			"async" : false,
			"params" : {
				"strDate" : date,
				"fPersonID" : fPersonID,
				"fDeptID" : fDeptID,
				"fOgnID" : fOgnID
			},
			"success" : function(data) {
				self.comp(dataCom).clear();
				self.comp(dataCom).loadData(data);
			}
		});

	};

	return Model;
});