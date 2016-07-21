define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var IM = require("$UI/chat/js/im");
	var UUID = require("$UI/system/lib/base/uuid")
	var Model = function() {
		this.callParent();
		this.fDepart; // 班次
		this.fDepartTime; // 时间
		this.isSetting = false;
		this.personID;
		this.row;

	};
	Model.prototype.attendanceWeek = function(DepartSpan, TimeSpan, checkboxT, HideSpan, DepartHide) {
		var s1 = this.getElementByXid(DepartSpan);
		var s2 = this.getElementByXid(TimeSpan);
		if (this.comp(checkboxT).value == "true") {
			s1.style.display = "inline-block";
			s2.style.display = "inline-block";
			$("[xid=" + HideSpan + "]").addClass("hide");
			$("[xid=" + DepartHide + "]").removeClass("hide");
		} else {

			s1.style.display = "none";
			s2.style.display = "none";

			$("[xid=" + HideSpan + "]").removeClass("hide");
			$("[xid=" + DepartHide + "]").addClass("hide");
		}
	};

	Model.prototype.monCheckboxChange = function(event) {
		var s1 = this.getElementByXid("span9");
		var s2 = this.getElementByXid("span10");

		if (this.comp("monCheckbox").value == "true") {
			s1.style.display = "inline-block";
			s2.style.display = "inline-block";
			$("[xid=span31]").addClass("hide");
			$("[xid=span12]").removeClass("hide");
		} else {

			s1.style.display = "none";
			s2.style.display = "none";
			$("[xid=span31]").removeClass("hide");
			$("[xid=span12]").addClass("hide");

		}
		;

	};

	Model.prototype.tuesCheckboxChange = function(event) {
		this.attendanceWeek("span43", "span42", "tuesCheckbox", "span40", "span13");

	};

	Model.prototype.departBtnClick = function(event) {
		this.comp("departDlg").open({
			"src" : "$UI/work/attendance/process/attendance/AttendanceTimeActivity.m.w"
		});
	};

	Model.prototype.wednCheckboxChange = function(event) {
		this.attendanceWeek("span15", "span16", "wednCheckbox", "span5", "span23");
	};

	Model.prototype.thursCheckboxChange = function(event) {
		this.attendanceWeek("span18", "span19", "thursCheckbox", "span30", "span24");
	};

	Model.prototype.friCheckboxChange = function(event) {
		this.attendanceWeek("span21", "span22", "friCheckbox", "span33", "span25");
	};

	Model.prototype.saturCheckboxChange = function(event) {
		this.attendanceWeek("span37", "span38", "saturCheckbox", "span39", "span32")
	};

	Model.prototype.sunCheckboxChange = function(event) {
		this.attendanceWeek("span27", "span28", "sunCheckbox", "span35", "span34")
	};
	Model.prototype.modelLoad = function(event) {
		var s1 = this.getElementByXid("span9");
		var s2 = this.getElementByXid("span10");
		if (this.comp("monCheckbox").value == "true") {
			s1.style.display = "inline-block";
			s2.style.display = "inline-block";
			$("[xid=span31]").addClass("hide");
			$("[xid=span12]").removeClass("hide");
		} else {

			s1.style.display = "none";
			s2.style.display = "none";
			$("[xid=span31]").removeClass("hide");
			$("[xid=span12]").addClass("hide");
		}
		;
		this.attendanceWeek("span43", "span42", "tuesCheckbox", "span40", "span13");// 周二
		this.attendanceWeek("span15", "span16", "wednCheckbox", "span5", "span23");// 周三
		this.attendanceWeek("span18", "span19", "thursCheckbox", "span30", "span24")// 四
		this.attendanceWeek("span21", "span22", "friCheckbox", "span33", "span25")// 周五
		this.attendanceWeek("span37", "span38", "saturCheckbox", "span39", "span32")// 周六
		this.attendanceWeek("span27", "span28", "sunCheckbox", "span35", "span34")// 周日

		// this.personID = IM.getCurrentInfo().CurrentPersonID;
	};

	Model.prototype.departDlgReceive = function(event) {
		this.fDepart = event.data.departSign;
		this.fDepartTime = event.data.time;
		$(".departShow").html(this.fDepart)
		$(".timeShow").html(this.fDepartTime);

		this.isSetting = true;
	};

	Model.prototype.modelModelConstruct = function(event) {
		this.row = null;
		if (this.params.data) {
			this.comp("AttendanceWeekData").setFilter("filter", "fAttendanceAdminID = '" + this.params.data + "'");
		}
	};
	Model.prototype.saveDateBtn = function(event) {
		var self = this;
		var data = this.comp("AttendanceWeekData");

		$("input[name=depart]").each(function(index, obj) {
			if (obj.checked) {
				switch (index) {
				case 0:
					data.setValue("fMonday", "true");
					break;
				case 1:
					data.setValue("fTuesday", "true");
					break;
				case 2:
					data.setValue("fWednesday", "true");
					break;
				case 3:
					data.setValue("fThursday", "true");
					break;
				case 4:
					data.setValue("fFriday", "true");
					break;
				case 5:
					data.setValue("fSaturday", "true");
					break;
				case 6:
					data.setValue("fSunday", "true");
					break;
				}
			}
		});
		if (this.fDepart) {
			data.setValue("fDepart", this.fDepart);
		} else {
			data.setValue("fDepart", this.getElementByXid("span2").innerHTML)
		}

		if (this.fDepartTime) {
			data.setValue("fDepartTime", this.fDepartTime);
		} else {
			data.setValue("fDepartTime", this.getElementByXid("span6").innerHTML);
		}
		this.owner.send({
			"data" : data.getRowByID()
		});
		this.close();
	};

	Model.prototype.modelModelConstructDone = function(event) {
		var data = this.comp("AttendanceWeekData");
		if (data.count() === 0) {
			var options = {
				defaultValues : [ {
					"fMonday" : "true",
					"fTuesday" : "true",
					"fWednesday" : "true",
					"fThursday" : "true",
					"fFriday" : "true",
					"fSaturday" : "false",
					"fSunday" : "false",
					"fDepart" : "A",
					"fDepartTime" : "9:00:00-18:00:00",
					"fID" : UUID.createUUID()
				}, ]
			};
			this.row = data.newData(options)[0];
		} else {
			data.loadData();
		}
	};

	return Model;
});