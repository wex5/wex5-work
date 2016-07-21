define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.dateShowClick = function(event) {
		var v = this.comp('mianData').setValue('isChecked');
		this.comp("dateChooseDlg").open({
			"src" : "$UI/work/attendance/process/attendance/personCountDlg.w"
		}, {
			"data" : v
		});

	};
	
	Model.prototype.countContent = function() {
		var normalCount = this.comp('mianData').countByAll(function(event) {
			var v = event.source.getValue('fStatus', event.row);
			return v.indexOf('正常考勤') == 0;
		});
		$("[xid=normalSpan]").html(normalCount + '天');

		// 迟到
		var lateCount = this.comp('mianData').countByAll(function(event) {
			var v = event.source.getValue('fStatus', event.row);
			return v.indexOf('迟到') == 0;
		});
		$("[xid=lateSpan]").html(lateCount + '次');
		var row = this.comp("statusData").getRowByID("迟到")
		if (lateCount == 0) {
			this.comp("statusData").setValue("isHide", false, row);
		} else {
			this.comp("statusData").setValue("isHide", true, row);
		}

		// 早退
		var earlyCount = this.comp('mianData').countByAll(function(event) {
			var v = event.source.getValue('fStatus', event.row);
			return v.indexOf('早退') == 0;
		});
		$("[xid=earlySpan]").html(earlyCount + '次');
		var row = this.comp("statusData").getRowByID("早退")
		if (earlyCount == 0) {
			this.comp("statusData").setValue("isHide", false, row);
		} else {
			this.comp("statusData").setValue("isHide", true, row);
		}

		// 未打卡
		var absentCount = this.comp('mianData').countByAll(function(event) {
			var v = event.source.getValue('fStatus', event.row);
			return v.indexOf('未打卡') == 0;
		});
		$("[xid=absentSpan]").html(absentCount + '次');
		var row = this.comp("statusData").getRowByID("未打卡")
		if (absentCount == 0) {
			this.comp("statusData").setValue("isHide", false, row);
		} else {
			this.comp("statusData").setValue("isHide", true, row);
		}

		// 旷工
		var noCount = this.comp('mianData').countByAll(function(event) {
			var v = event.source.getValue('fStatus', event.row);
			return v.indexOf('旷工') == 0;
		});
		var row = this.comp("statusData").getRowByID("旷工")
		if (noCount == 0) {
			this.comp("statusData").setValue("isHide", false, row);
		} else {
			this.comp("statusData").setValue("isHide", true, row);
		}

	};
	
	Model.prototype.modelParamsReceive = function(event){
		this.countContent();
	};
	
	Model.prototype.modelLoad = function(event){
		var time ;
		justep.Baas.sendRequest({
			"url" : "/work/common",
			"action" : "getSysDateTime",
			"async" : false,
			"params" : {},
			"success" : function(data) {
				time =new Date(data.time);
			}
		});
		time = (time.getFullYear() + '年' + (time.getMonth() + 1) + '月');
		var timeYear=time.substring(0, 4) + '年';
		var timeMonth=(time.substring(5, 6)) + '月';
		$("[xid=yearShowSpan]").html(timeYear);
		$("[xid=monthShowSpan]").html(timeMonth);
		
		var ctx = this.getContext();
		var dateParam;
		if (time.substring(5, 6) < 10) {
			dateParam = time.substring(0, 4) + "-0" + time.substring(5, 6);
		} else {
			dateParam = time.substring(0, 4) + "-" + time.substring(5, 6);
		}
		var self=this;
		justep.Baas.sendRequest({
			"url" : "/work/Attendance",
			"action" : "queryCheckStat",
			"async" : false,
			"params" : {'strDate': dateParam,
						'fPersonID':con.personID
						},
			"success" :function(data) {
				if (data) {
					self.comp('mianData').loadData(data);
				}
			}
		});
		this.countContent();
		
		$("[xid=waitDiv]").hide()
		$("[xid=panel2]").show()
	};
	
	Model.prototype.dateChooseDlgReceive = function(event) {
		this.comp('mianData').setValue("isChecked", event.v);
		var timeYear=event.data.substring(0, 5);
		var timeMonth=event.data.substring(5);
		$("[xid=yearShowSpan]").html(timeYear);
		$("[xid=monthShowSpan]").html(timeMonth);
	};
	
	Model.prototype.dateChooseDlgReceived = function(event) {
		/* 设置参数 */
		var ctx = this.getContext();
		var dateParam;
		if (event.data.substring(5, 6) < 10) {
			dateParam = event.data.substring(0, 4) + "-0" + event.data.substring(5, 6);
		} else {
			dateParam = event.data.substring(0, 4) + "-" + event.data.substring(5, 6);
		}
		var self = this;
			justep.Baas.sendRequest({
			"url" : "/work/Attendance",
			"action" : "queryCheckStat",
			"async" : false,
			"params" : {'strDate': dateParam,
						'fPersonID':con.personID
			},
			"success" :function(data) {
				if (data) {
					self.comp('mianData').clear();
					self.comp('mianData').loadData(data);
				}
			}
		});
		this.countContent();

	};
	
	
	
	return Model;
});