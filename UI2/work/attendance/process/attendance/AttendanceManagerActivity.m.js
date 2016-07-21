define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");

	var Model = function(){
		this.callParent();
		this.row;
	};
	
	Model.prototype.getRequest = function(action) {
		var self = this;
		justep.Baas.sendRequest({
			"url" : "/work/attendance",
			"action" : action,
			"async" : false,
			"params" : {
				"ognID":con.ognID
			},
			"success" : function(data) {
				if(data){
					self.comp("AttendanceInfo").loadData(data);//数据组件字段必须和后台保持一致
				}	 
			}
		});
	}
	
	Model.prototype.modelParamsReceive = function(event){
		this.getRequest("queryOA_AttendanceGroup");
	};
	
	Model.prototype.addAttenGroupClick = function(event){
		var url = "$UI/work/attendance/process/attendance/mainActivity.w";
		justep.Shell.showPage(url,{"aa":"a"})
	};
	
	Model.prototype.deleteBtnClick = function(event){
		this.row = event.bindingContext.$object;
		this.comp("delMessageDialog").show();
	};
	
	Model.prototype.delMessageDialogOK = function(event){
		var self = this;
		if(this.row){
			var id = this.row.row.fID;
			justep.Baas.sendRequest({
			"url" : "/work/Attendance",
			"action" : "deleteAttendance",
			"async" : false,
			"params" : {'deleteAll': id},
			"success" :function(data) {
//				if(data.state){
//					justep.Util.hint("删除成功！")
//				}
			}
		});
			this.comp("AttendanceInfo").deleteData(this.row);
		}
	};
	
	Model.prototype.modelActive = function(event){
		this.getRequest("queryOA_AttendanceGroup");
	};
	
	Model.prototype.undataPersonClick = function(event){
		var url = "$UI/work/attendance/process/attendance/SetAttendancePeopleActivity.m.w";/*?process=/OA/attendance/process/attendance/attendanceProcess&Activity=SetAttendancePeopleActivity";*/
		var id = event.bindingContext.$object.row.fID;
		justep.Shell.showPage(url,{"rowID":id})
	};
	
	Model.prototype.updataRuleClick = function(event){
		var url = "$UI/work/attendance/process/attendance/SetAttendanceActivity.m.w";/*?process=/OA/attendance/process/attendance/attendanceProcess&Activity=SetAttendanceActivity";*/
		var id = event.bindingContext.$object.row.fID;
		justep.Shell.showPage(url,{"rowID":id})
	};
	
	Model.prototype.advancedSettingClick = function(event){
		var url ="$UI/work/attendance/process/attendance/settingActivity.m.w";/*?process=/OA/attendance/process/attendance/attendanceProcess&Activity=settingActivity";*/
		justep.Shell.showPage(url);
	};
	
	return Model;
});